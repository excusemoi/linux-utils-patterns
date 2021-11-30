package main

import (
	"bufio"
	"fmt"
	"net"
	"strings"
)

// требуется только ниже для обработки примера

func main() {

	fmt.Println("Launching server...")

	ln, _ := net.Listen("tcp", ":8081")

	conn, _ := ln.Accept()

	for {
		message, _ := bufio.NewReader(conn).ReadString('\n')
		fmt.Print("Message Received:", string(message))
		newmessage := strings.ToUpper(message)
		if len(newmessage) == 0 {
			return
		}
		conn.Write([]byte(newmessage + "\n"))
	}
}
