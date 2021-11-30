package pattern

import "fmt"

/*
	Реализовать паттерн «строитель».
Объяснить применимость паттерна, его плюсы и минусы, а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Builder_pattern
*/

//общий пример (пока пишу его, думаю над конкретным)

/*
основное несовершенство строителя как ПОРОЖДАЮЩЕГО паттерна
заключается в его замкнутости на объектах с равными и ограниченными наборами "пунктов создания"

пример:
айфон без 3.5 разъёма для наушников для этого паттерна кардинально отличается от
андройда, у которого этот разъём имеется, поскольку эти телефоны порождаются разной последовательностью действий

айфон
1 	создать экран
2 	создать динамики
...
i 	создать lightning или как там его
i+1 создать touch id
...
n 	создать камеру

андроид
1 	создать экран
2 	создать динамики
...
i 	создать lightning (или стандартный разъём) пункт #i не совпадает
i+1 создать 3.5 мм разъём				 	   пункт #i+1 не совпадает
i+2 создать touch id
...
n+1 	создать камеру

проблема, приводящая к "обмягчению" создаваемых объектов на языке go
может быть решена созданием общей структуры Builder, важнейшим полем которого является
слайс методов создания того или иного объекта

но в таком случае нет возможности контролировать похожесть создаваемых объектов, что весьма печально
*/

type Phone struct {
	screen              string
	button              string
	headphonesConnector string
}

type Bench struct {
	builder iPhoneBuilder
}

func (b *Bench) BuildPhone() *Phone {
	return &Phone{
		screen:              b.builder.CreateScreen(),
		button:              b.builder.CreateButton(),
		headphonesConnector: b.builder.CreateHeadphonesConnector(),
	}
}

type iPhoneBuilder interface {
	CreateScreen() string
	CreateButton() string
	CreateHeadphonesConnector() string
}

type AndroidBuilder struct {
}

func (*AndroidBuilder) CreateScreen() string {
	return "IPS screen"
}

func (*AndroidBuilder) CreateButton() string {
	return "Android button"
}

func (*AndroidBuilder) CreateHeadphonesConnector() string {
	return "3.5"
}

type IPhoneBuilder struct {
}

func (*IPhoneBuilder) CreateScreen() string {
	return "Retina screen"
}

func (*IPhoneBuilder) CreateButton() string {
	return "Iphone button"
}

func (*IPhoneBuilder) CreateHeadphonesConnector() string {
	return "lightning"
}

type CarBuilder struct {
}

func (*CarBuilder) Build() {
	fmt.Println("Building car")
}

func CodeExample() {
	b1 := Bench{builder: &IPhoneBuilder{}}
	b2 := Bench{builder: &AndroidBuilder{}}
	b1.BuildPhone()
	b2.BuildPhone()
}

//альтернатива
//теперь можем сделать создание ещё более вариативным, но в таком случае сложно избежать дополнительного контроля за слайсом методовы
type AlterPhoneBuilder struct {
	points []func() string
}

func (b *AlterPhoneBuilder) Build() *Phone {
	if len(b.points) != 3 {
		return nil
	}
	return &Phone{
		screen:              b.points[0](),
		button:              b.points[1](),
		headphonesConnector: b.points[2](),
	}

}
