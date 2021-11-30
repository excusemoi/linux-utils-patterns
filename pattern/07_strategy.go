package pattern

import "fmt"

/*
	Реализовать паттерн «стратегия».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Strategy_pattern
*/

//объединяем алгоритмы в семейство - используем таким образом, не задумываясь о конкретной реализации

type Routes struct {
	routesCreators []func() //схожие алгоритмы, реализованные методами с одинаковой сигнатурой
}

func WaterRoute() {
	fmt.Println("Water route")
}

func LandRoute() {
	fmt.Println("Land route")
}

func CodeExample2() {
	r := Routes{
		routesCreators: []func(){
			WaterRoute,
			LandRoute,
		},
	}
	for _, route := range r.routesCreators {
		route()
	}
}

//менее формальный пример

type Array struct {
	sort []func([]Array) //в зависимости от наполнения массива выбираем метод сортировки
	arr  []int
}
