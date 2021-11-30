package pattern

import (
	"fmt"
	"math/rand"
	"time"
)

/*
	Реализовать паттерн «состояние».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/State_pattern
*/

type State interface {
	View(c *Collection)
}

type IsSortedState struct {
}

func (i *IsSortedState) View(c *Collection) {
	fmt.Println(c.c)
}

type IsNilState struct {
}

func (i *IsNilState) View(c *Collection) {
	fmt.Println(c.c)
}

type IsEmptyState struct {
}

func (i *IsEmptyState) View(c *Collection) {
	fmt.Println(c.c)
}

type IsNotSortedState struct {
}

func (i *IsNotSortedState) View(c *Collection) {
	fmt.Println(c.c)
}

type Collection struct {
	c []int
	s State
}

func (c *Collection) setNil() {
	c.c = nil
	c.s = &IsNilState{}
	fmt.Println("Now collection is nil")
}

func (c *Collection) sort() {
	if c.c == nil && len(c.c) == 0 {
		return
	}

	for i := len(c.c); i > 0; i-- {
		for j := 1; j < i; j++ {
			if c.c[j-1] > c.c[j] {
				intermediate := c.c[j]
				c.c[j] = c.c[j-1]
				c.c[j-1] = intermediate
			}
		}
	}

	c.s = &IsSortedState{}
	fmt.Println("Now collection is sorted")

}

func (c *Collection) shuffle() {
	rand.Seed(time.Now().UnixNano())
	rand.Shuffle(len(c.c),
		func(i, j int) { c.c[i], c.c[j] = c.c[j], c.c[i] })
	c.s = &IsNotSortedState{}
	fmt.Println("Now collection is not sorted")
}

func (c *Collection) setZeroLength() {
	c.c = make([]int, 0)
	c.s = &IsEmptyState{}
	fmt.Println("Now collection is empty")
}

func CodeExample6() {
	collection := Collection{c: []int{3, 1, 2}}

	collection.shuffle()
	fmt.Println(collection.c)

	collection.sort()
	fmt.Println(collection.c)

	collection.setZeroLength()
	fmt.Println(collection.c)

	collection.setNil()
	fmt.Println(collection.c)

}
