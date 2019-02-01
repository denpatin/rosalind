package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func Dna(dataset string) string {
	var result [4]int
	result[0] = strings.Count(dataset, "A")
	result[1] = strings.Count(dataset, "C")
	result[2] = strings.Count(dataset, "G")
	result[3] = strings.Count(dataset, "T")
	return strings.Trim(fmt.Sprint(result), "[]")
}

func main() {
	dat, _ := ioutil.ReadFile(os.Args[1])
	dataset := string(dat)
	fmt.Println(Dna(dataset))
}
