package main

import(
	"fmt"
	"log"
	"net/http"
)

func main(){
	http.HandleFunc("/", func(rw http.ResponseWritter, r *http.Request){
		fmt.Fprintf(rw,"Full Cycle Rcoks")
	})

	log.Fatal(http.listenAndServe(":8080", nil))
}