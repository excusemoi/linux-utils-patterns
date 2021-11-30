package pattern

import (
	"fmt"
	"strings"
)

/*
	Реализовать паттерн «цепочка вызовов».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Chain-of-responsibility_pattern
*/

//простая система авторизации пользователей

var users map[string]string = map[string]string{
	"lddaw": "13312",
	"123":   "456",
}

type handler interface {
	Handle(req Request) bool
	SetNext(h handler) handler
}

type LoginHandler struct {
	next handler
}

func (p *LoginHandler) Handle(req Request) bool {
	res := len(req.login) > 0 &&
		len(req.login) < 10 &&
		!strings.Contains(req.login, "/")
	fmt.Printf("Login hanlder:\nlogin: %s\npassword: %s\nres: %v\n\n", req.login, req.password, res)

	if !res || p.next == nil {
		return res
	}
	return p.next.Handle(req)
}

func (l *LoginHandler) SetNext(h handler) handler {
	l.next = h
	return l.next
}

type PasswordHanler struct {
	next handler
}

func (p *PasswordHanler) Handle(req Request) bool {
	res := len(req.password) > 0 &&
		len(req.password) < 20 &&
		!strings.Contains(req.password, "*")
	fmt.Printf("Password hanlder:\nlogin: %s\npassword: %s\nres: %v\n\n", req.login, req.password, res)

	if !res || p.next == nil {
		return res
	}
	return p.next.Handle(req)
}

func (l *PasswordHanler) SetNext(h handler) handler {
	l.next = h
	return l.next
}

type ExistingHandler struct {
	next handler
}

func (p *ExistingHandler) Handle(req Request) bool {
	pas, ok := users[req.login]

	res := (pas == req.password) && ok
	fmt.Printf("Existing hanlder:\nlogin: %s\npassword: %s\nres: %v\n\n", req.login, req.password, res)

	if !res || p.next == nil {
		return res
	}
	return p.next.Handle(req)
}

func (l *ExistingHandler) SetNext(h handler) handler {
	l.next = h
	return l.next
}

type Request struct {
	login    string
	password string
}

type AutorizationService struct {
	h handler
}

func (a *AutorizationService) Autorize(req Request) bool {
	return a.h.Handle(req)
}

func CodeExample5() {
	a := AutorizationService{h: &LoginHandler{}}
	h1 := a.h.SetNext(&PasswordHanler{})
	h1.SetNext(&ExistingHandler{})
	a.Autorize(Request{login: "dwdw/", password: "13312"})

}
