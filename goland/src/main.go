package main

import (
	"net/http"
	"log"
	"fmt"
)

func main() {
	http.HandleFunc("/", Start)
	log.Println("Service start...")

	http.ListenAndServe("5555", nil)
}

func Start(w http.ResponseWriter, r *http.Request){
	fmt.Fprintf(w, "Hello, world!")

}
