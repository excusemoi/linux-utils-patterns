package pattern

import "fmt"

/*
	Реализовать паттерн «комманда».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Command_pattern
*/

type Game struct {
	title string
}

type Command interface {
	Execute()
}

type OpenCommand struct {
	g *Game
}

func (c *OpenCommand) Execute() {
	c.g.OpenGame()
}

type SaveCommand struct {
	g *Game
}

func (c *SaveCommand) Execute() {
	c.g.SaveGame()
}

type CreateCommand struct {
	g *Game
}

func (c *CreateCommand) Execute() {
	c.g.CreateGame()
}

func (g *Game) OpenGame() {
	fmt.Println(g.title, "opened")
}

func (g *Game) SaveGame() {
	fmt.Println(g.title, "saved")
}

func (g *Game) CreateGame() {
	fmt.Println(g.title, "created")
}

func CodeExample4() {
	game := &Game{title: "Chess"}
	userComandsSequence := []Command{
		&SaveCommand{g: game},
		&OpenCommand{g: game},
		&CreateCommand{g: game},
	}
	for _, c := range userComandsSequence {
		c.Execute()
	}
}
