import { sleep } from 'k6';
import http from 'k6/http';

// get the Azure SQL Server URL from environment
var deleteCounter = 0;

export default function () {
    const url = __ENV.SQL_SERVER_URL;
    const database_name = __ENV.SQL_SERVER_DATABASE_NAME;
  const params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  // Create schema, users, and prepared statements
  const createSchemaQuery = 'CREATE SCHEMA your_schema';
  const createUserQuery = 'CREATE USER your_user WITH PASSWORD = "your_password"';
  const createPreparedStatementQuery = 'CREATE PROCEDURE your_procedure AS BEGIN INSERT INTO your_table (column1, column2) VALUES ("stmt_value1", "stmt_value2") END';

  http.post(`${url}/${database_name}`, createSchemaQuery, params);
  http.post(`${url}/${database_name}`, createUserQuery, params);
  http.post(`${url}/${database_name}`, createPreparedStatementQuery, params);

  // Send insert, update, and select queries
    const insertQuery = 'INSERT INTO your_table (column1, column2) VALUES ("value1", "value2")';
    const updateQuery = 'UPDATE your_table SET column1 = "new_value" WHERE id = 1';
    const selectQuery = 'SELECT * FROM your_table';

  http.post(`${url}/${database_name}`, insertQuery, params);
  http.post(`${url}/${database_name}`, updateQuery, params);
  http.post(`${url}/${database_name}`, selectQuery, params);

    if (Math.random() < 0.02) { // delete about 2% of the time
        const deleteQuery = 'DELETE FROM your_table WHERE id = ';
        deleteCounter = deleteCounter + 1;
        http.post(`${url}/${database_name}`, deleteQuery + deleteCounter, params);
    }
  // Send occasional wrong queries
  if (Math.random() < 0.04) {
    const wrongQuery = 'SELECT * FROM nonexistent_table';
    http.post(`${url}/${database_name}`, wrongQuery, params);
  }

  sleep(1);
}
