package main

import (
	"database/sql"
	"fmt"
	"log"
	"math/rand"
	"sync"

	_ "github.com/go-sql-driver/mysql"
)

const (
	numConnections      = 10
	numInsertsPerConn   = 100
	numQueriesPerConn   = 100
	numTransactions     = 100
	fakeDataInsertQuery = "INSERT INTO load_data (column1, column2, column3) VALUES (?, ?, ?)"
	fakeDataSelectQuery = "SELECT * FROM load_data"
)

func main() {
	// TiDB connection configuration
	dsn := "root:@tcp(127.0.0.1:4000)/test"

	// Create database and insert fake data
	createDatabaseAndInsertData(dsn)

	// Generate load
	var wg sync.WaitGroup
	for i := 0; i < numConnections; i++ {
		wg.Add(1)
		go executeQueries(dsn, i, &wg)
	}
	wg.Wait()
	fmt.Println("Load generation completed.")

	for i := 0; i < numConnections; i++ {
		wg.Add(1)
		go executeTransactions(dsn, i, &wg)
	}

	wg.Wait()
	fmt.Println("Transaction load generation completed.")

}

func createDatabaseAndInsertData(dsn string) {
	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	// Create table
	_, err = db.Exec("CREATE TABLE IF NOT EXISTS load_data (column1 INT, column2 VARCHAR(255), column3 FLOAT)")
	if err != nil {
		log.Fatal(err)
	}

	// Insert fake data
	for i := 0; i < numInsertsPerConn; i++ {
		_, err := db.Exec(fakeDataInsertQuery, rand.Intn(100), randomString(10), rand.Float64()*100)
		if err != nil {
			log.Fatal(err)
		}
	}
	fmt.Println("Fake data inserted successfully.")
}

func executeQueries(dsn string, connectionID int, wg *sync.WaitGroup) {
	defer wg.Done()

	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	for i := 0; i < numQueriesPerConn; i++ {
		_, err := db.Exec(fakeDataSelectQuery)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Printf("Connection %d executed query %d\n", connectionID, i+1)
	}
}

func executeTransactions(dsn string, connectionID int, wg *sync.WaitGroup) {
	defer wg.Done()

	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatalf("Connection %d: Failed to connect to TiDB: %v\n", connectionID, err)
		return
	}
	defer db.Close()

	for i := 0; i < numTransactions; i++ {
		// Start a new transaction
		tx, err := db.Begin()
		if err != nil {
			log.Printf("Connection %d - Transaction %d: Failed to begin transaction: %v\n", connectionID, i+1, err)
			continue
		}

		// Execute your transactional queries here
		// For example:
		// _, err = tx.Exec("INSERT INTO your_table_name (column1, column2) VALUES (?, ?)", value1, value2)

		// Commit the transaction
		if err := tx.Commit(); err != nil {
			// Handle the error (rollback or retry)
			log.Printf("Connection %d - Transaction %d: Failed to commit transaction: %v\n", connectionID, i+1, err)
			tx.Rollback() // Rollback the transaction in case of an error
			continue
		}

		fmt.Printf("Connection %d - Transaction %d: Transaction committed successfully\n", connectionID, i+1)
	}
}

func randomString(length int) string {
	letterRunes := []rune("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
	b := make([]rune, length)
	for i := range b {
		b[i] = letterRunes[rand.Intn(len(letterRunes))]
	}
	return string(b)
}
