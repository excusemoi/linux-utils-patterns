package dev10

import (
	"bufio"
	"errors"
	"flag"
	"fmt"
	"io"
	"net"
	"os"
	"os/signal"
	"syscall"
	"time"
)

/*
=== Утилита telnet ===

Реализовать примитивный telnet клиент:
Примеры вызовов:
go-telnet --timeout=10s host port go-telnet mysite.ru 8080 go-telnet --timeout=3s 1.1.1.1 123

Программа должна подключаться к указанному хосту (ip или доменное имя) и порту по протоколу TCP.
После подключения STDIN программы должен записываться в сокет, а данные полученные и сокета должны выводиться в STDOUT
Опционально в программу можно передать таймаут на подключение к серверу (через аргумент --timeout, по умолчанию 10s).

При нажатии Ctrl+D программа должна закрывать сокет и завершаться. Если сокет закрывается со стороны сервера, программа должна также завершаться.
При подключении к несуществующему сервер, программа должна завершаться через timeout.
*/

func parseTelnetCommandLineArguments() (map[string]interface{}, error) {

	var (
		t    = flag.String("t", "5s", "timeout")
		args = make(map[string]interface{})
	)

	flag.Parse()
	timeout, err := time.ParseDuration(*t)
	if err != nil {
		return nil, err
	}

	notKeyArgs := flag.Args()
	if len(notKeyArgs) != 2 {
		return nil, errors.New("not enough arguments")
	}

	args["host"] = notKeyArgs[0]
	args["port"] = notKeyArgs[1]
	args["timeout"] = timeout

	return args, nil
}

//Telnet implements telnet
func Telnet() {

	args, err := parseTelnetCommandLineArguments()
	if err != nil {
		io.WriteString(os.Stderr, "telnet: "+err.Error()+" ")
		os.Exit(1)
	}

	interrupt := make(chan os.Signal)
	signal.Notify(interrupt, os.Interrupt,
		syscall.SIGHUP,
		syscall.SIGINT,
		syscall.SIGTERM,
		syscall.SIGQUIT,
	)
	go func() {
		<-interrupt
		fmt.Println("telnet: exit ")
		os.Exit(0)
	}()

	address := args["host"].(string) + ":" +
		args["port"].(string)

	fmt.Println("telnet: trying to address", address)

	conn, err := net.Dial("tcp", address)

	if err != nil {
		io.WriteString(os.Stderr, "telnet:"+err.Error()+" ")
		time.Sleep(args["timeout"].(time.Duration))
		os.Exit(1)
	}

	fmt.Println("telnet: connected to", address)

	for {
		reader := bufio.NewReader(os.Stdin)
		fmt.Println("text to send:")
		text, _ := reader.ReadString('\n')
		if len(text) == 0 {
			fmt.Println("telnet: exit ")
			os.Exit(0)
		}
		fmt.Fprintf(conn, text+"\n")
		message, _ := bufio.NewReader(conn).ReadString('\n')
		fmt.Print("message from server: " + message)
	}

}
func main() {
	Telnet()
}
