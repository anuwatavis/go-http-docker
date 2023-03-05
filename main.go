package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "hello from anuwataravis.dev")
	})

	portToRunServer := ":8080"
	fmt.Printf("Server running (port=[%v]), route: http://localhost:8080/", portToRunServer)
	if err := http.ListenAndServe(portToRunServer, nil); err != nil {
		log.Fatal(err)
	}
}
