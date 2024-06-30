package main

import "net/http"

func main() {
	http.HandleFunc("/hello", Hello)
	http.ListenAndServe(":9090", nil)
}

func Hello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello, World!!!!"))
}
