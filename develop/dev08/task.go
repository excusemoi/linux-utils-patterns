package dev08

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"os/signal"
	"strings"
	"syscall"

	"github.com/shirou/gopsutil/process"
)

/*
=== Взаимодействие с ОС ===

Необходимо реализовать собственный шелл

встроенные команды: cd/pwd/echo/kill/ps
поддержать fork/exec команды
конвеер на пайпах

Реализовать утилиту netcat (nc) клиент
принимать данные из stdin и отправлять в соединение (tcp/udp)
Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

type Command interface {
	Run(args []string) string
}

type cd struct{}

type pwd struct{}

type kill struct{}

type ps struct{}

type echo struct{}

var commands map[string]Command = map[string]Command{
	"cd":   &cd{},
	"pwd":  &pwd{},
	"kill": &kill{},
	"ps":   &ps{},
	"echo": &echo{},
}

func (*pwd) Run(args []string) string {
	dir, _ := os.Getwd()
	return dir
}

func (*cd) Run(args []string) string {
	if len(args) < 1 {
		return ""
	}
	cDir, _ := os.Getwd()
	err := os.Chdir(cDir + "/" + strings.TrimSpace(args[0]) + "/")
	if err != nil {
		return err.Error()
	}
	return ""
}

func (*kill) Run(args []string) string {
	if len(args) < 1 {
		return `kill: usage: kill [-s signal_name |
		 -n signal_number |
		  -signal_name] process_id |
		   job_name] ... or kill -l [signal_name]`
	}
	name := strings.TrimSpace(args[0])
	processes, err := process.Processes()
	if err != nil {
		return err.Error()
	}
	for _, p := range processes {
		n, err := p.Name()
		pid := p.Pid
		if err != nil {
			return err.Error()
		}
		if n == name || name == fmt.Sprintf("%d", pid) {
			return p.Kill().Error()
		}
	}
	return fmt.Sprintf("(%s) - No such process", name)
}
func (*ps) Run(args []string) string {
	res := "PID\tCMD\n"
	processes, _ := process.Processes()
	for _, proc := range processes {
		cmd, _ := proc.Cmdline()
		res += fmt.Sprintf("%d\t%s\t\n", proc.Pid, cmd)
	}
	return res

}

func (*echo) Run(args []string) string {
	if len(args) < 1 {
		return ""
	}
	return strings.TrimRight(args[0], "\n")
}

func Shell() {
	interrupt := make(chan os.Signal)
	signal.Notify(interrupt,
		os.Interrupt,
		syscall.SIGHUP,
		syscall.SIGINT,
		syscall.SIGTERM,
		syscall.SIGQUIT,
	)
	go func() {
		<-interrupt
		fmt.Println("shell: exit")
		os.Exit(0)
	}()

External:
	for {
		reader := bufio.NewReader(os.Stdin)
		text, _ := reader.ReadString('\n')
		if len(text) == 0 || strings.TrimSpace(text) == "\\quit" {
			os.Exit(0)
		}
		res := ""
		cmds := strings.Split(text, " | ")
		for i, cmd := range cmds {
			wrds := strings.Split(cmd, " ")
			if len(wrds) == 0 {
				continue
			}
			if command, ok := commands[strings.TrimSpace(wrds[0])]; ok {
				args := make([]string, 0)
				if len(wrds) > 1 {
					args = append(args, wrds[1:]...)
				}
				if i != 0 {
					res = command.Run(strings.Split(res, " "))
				} else {
					res = command.Run(args)
				}
				if i == len(cmds)-1 {
					fmt.Println(strings.TrimRight(res, "\n"))

				}
			} else {
				io.WriteString(os.Stderr, "shell: incorrect command\n")
				continue External
			}
		}
	}
}
