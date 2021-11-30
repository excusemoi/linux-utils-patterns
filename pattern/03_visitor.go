package pattern

import "math"

/*
	Реализовать паттерн «посетитель».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Visitor_pattern
*/

type visitor interface {
	visitCircle(c circle) float32
	visitSquare(s square) int
}

type classicVisitor struct {
}

func (*classicVisitor) visitCircle(c circle) float32 {
	return float32(math.Pi) * float32(c.r) * float32(c.r)
}

func (*classicVisitor) visitSquare(s square) int {
	return s.a * s.a
}

type circle struct {
	r int
}

type square struct {
	a int
}

func CodeExample3() {
	cv := classicVisitor{}
	_ = cv.visitCircle(circle{r: 2})
	_ = cv.visitSquare(square{a: 5})
}
