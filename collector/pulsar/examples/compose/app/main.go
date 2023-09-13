package main

import (
	"context"
	"fmt"
	"log"
	"math/rand"
	"os"
	"time"

	"github.com/apache/pulsar-client-go/pulsar"
)

func randomString(length int) string {
	const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	b := make([]byte, length)
	for i := range b {
		b[i] = charset[rand.Intn(len(charset))]
	}
	return string(b)
}

func main() {
	rand.Seed(time.Now().UnixNano())

	pulsarURL := os.Getenv("PULSAR_URL")
	if pulsarURL == "" {
		pulsarURL = "pulsar://localhost:6650"
	}

	client, err := pulsar.NewClient(pulsar.ClientOptions{
		URL: pulsarURL,
	})

	if err != nil {
		log.Fatal(err)
	}

	defer client.Close()

	producer, err := client.CreateProducer(pulsar.ProducerOptions{
		Topic: "otel-topic",
	})

	if err != nil {
		log.Fatal(err)
	}

	defer producer.Close()

	consumer, err := client.Subscribe(pulsar.ConsumerOptions{
		Topic:            "otel-topic",
		SubscriptionName: "sub-1",
	})

	if err != nil {
		log.Fatal(err)
	}

	defer consumer.Close()

	go func() {
		for {
			randomMsg := randomString(10)
			if _, err := producer.Send(context.Background(), &pulsar.ProducerMessage{
				Payload: []byte(randomMsg),
			}); err != nil {
				log.Fatal(err)
			}

			time.Sleep(1 * time.Second)
		}
	}()

	for {
		ctx, cancel := context.WithTimeout(context.Background(), 2*time.Second)
		msg, err := consumer.Receive(ctx)
		if err != nil {
			log.Fatal(err)
		}
		cancel()

		fmt.Printf("Received: %s\n", string(msg.Payload()))

		consumer.Ack(msg)
	}
}
