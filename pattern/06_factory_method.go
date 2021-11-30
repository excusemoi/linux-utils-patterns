package pattern

import (
	"math/rand"
	"time"
)

//приведу пример из своего тестового задания

type ICreator interface {
	Create(id int) IData
}

type OrderCreator struct {
}

type ItemCreator struct {
}

type PaymentCreator struct {
}

func (ic ItemCreator) Create(id int) IData {
	rand.Seed(time.Now().UnixNano())
	var price = randInt(minPrice, maxPrice+1)
	var sale = rand.Intn(minPrice)
	var totalPrice = price - sale
	return Item{
		ChrtID:     randomString(5),
		Price:      price,
		Rid:        randomString(5),
		Name:       items[rand.Intn(len(items))],
		Sale:       sale,
		Size:       randomString(5),
		TotalPrice: totalPrice,
		NmID:       rand.Intn(5),
		Brand:      brands[rand.Intn(len(brands))],
		ItemID:     id,
	}
}

func (pc PaymentCreator) Create(id int) IData {
	rand.Seed(time.Now().UnixNano())
	return Payment{
		Transaction:  transactions[rand.Intn(len(transactions))],
		Currency:     currencies[rand.Intn(len(currencies))],
		Provider:     providers[rand.Intn(len(providers))],
		Amount:       rand.Intn(5),
		PaymentDt:    rand.Intn(5),
		Bank:         banks[rand.Intn(len(banks))],
		DeliveryCost: randInt(minPrice, maxPrice),
		GoodsTotal:   randInt(0, 10),
		PaymentID:    id,
	}
}

func (oc OrderCreator) Create(id int) IData { //здесь основная часть пользы от паттерна
	rand.Seed(time.Now().UnixNano())
	pc := PaymentCreator{}
	ic := ItemCreator{}
	var o = Order{
		IData:             nil,
		OrderUID:          randomString(5),
		Entry:             randomString(5),
		InternalSignature: randomString(5),
		Payment:           pc.Create(id).(Payment),
		Items:             []Item{},
		Locale:            randomString(5),
		CustomerID:        randomString(5),
		TrackNumber:       randomString(5),
		DeliveryService:   deliveryServices[rand.Intn(len(deliveryServices))],
		Shardkey:          randomString(5),
		SmID:              rand.Intn(5),
		PaymentID:         id,
	}
	itemsAmount := randInt(1, 5)
	for i := 0; i < itemsAmount; i++ {
		o.Items = append(o.Items, ic.Create(id).(Item))
		o.Items[i].ChrtID = o.OrderUID
	}
	o.Payment.Amount = itemsAmount
	return o
}

const minPrice = 20
const maxPrice = 10000

var banks = [...]string{
	"Allahabad Bank",
	"Andhra Bank",
	"Axis Bank",
	"Bank of Bahrain and Kuwait",
	"Bank of Baroda - Corporate Banking",
	"Bank of Baroda - Retail Banking",
	"Bank of India",
	"Bank of Maharashtra",
	"Canara Bank",
	"Central Bank of India",
	"City Union Bank",
}

var providers = [...]string{
	"PayPal",
	"Due",
	"Stripe",
	"Flagship Merchant Services",
	"Payline Data",
	"Square",
	"Adyen",
	"BirPay",
}

var currencies = [...]string{
	"RUB",
	"EUR",
	"AUD",
	"BRL",
	"BGN",
	"KHR",
	"CVE",
	"KYD",
	"XAF",
	"CLP",
}

var transactions = [...]string{
	"Cash",
	"Personal Cheque",
	"Debit Card",
	"Credit Card",
}

var items = [...]string{
	"Water",
	"Book",
	"Shoes",
	"Ladder",
	"Paper",
	"Pen",
	"Shirt",
	"Cake",
	"Pencil",
	"PC",
}

var brands = [...]string{
	"Adidas",
	"Coca-cola",
	"Erich Krause",
	"Subway",
	"Chanel",
	"Nile",
	"Samsung",
	"MacDonalds",
	"KFC",
}

var deliveryServices = [...]string{
	"Meituan",
	"Uber Eats",
	"Delivery Hero",
	"DoorDash",
	"Grubhub",
	"Deliveroo",
	"Just Eat",
	"Postmates",
	"Swiggy",
	"Zomato",
}

type IData interface {
}

type OutputOrder struct {
	OrderUID        string `json:"order_uid"`
	Entry           string `json:"entry"`
	TotalPrice      int    `json:"total_price"`
	CustomerID      string `json:"customer_id"`
	TrackNumber     string `json:"track_number"`
	DeliveryService string `json:"delivery_service"`
}

type Order struct {
	IData
	OrderUID          string  `json:"order_uid" db:"orderuid"`
	Entry             string  `json:"entry" db:"entry"`
	InternalSignature string  `json:"internal_signature" db:"internalsignature"`
	Payment           Payment `json:"payment" db:"payment"`
	Items             []Item  `json:"items" db:"items"`
	Locale            string  `json:"locale" db:"locale"`
	CustomerID        string  `json:"customer_id" db:"customerid"`
	TrackNumber       string  `json:"track_number" db:"tracknumber"`
	DeliveryService   string  `json:"delivery_service" db:"deliveryservice"`
	Shardkey          string  `json:"shardkey" db:"shardkey"`
	SmID              int     `json:"sm_id" db:"smid"`
	PaymentID         int     `json:"Payment_id" db:"paymentid"`
}

type Payment struct {
	IData
	Transaction  string `json:"transaction" db:"transaction"`
	Currency     string `json:"currency" db:"currency"`
	Provider     string `json:"provider" db:"provider"`
	Amount       int    `json:"amount" db:"amount"`
	PaymentDt    int    `json:"payment_dt" db:"paymentdt"`
	Bank         string `json:"bank" db:"bank"`
	DeliveryCost int    `json:"delivery_cost" db:"deliverycost"`
	GoodsTotal   int    `json:"goods_total" db:"goodstotal"`
	PaymentID    int    `db:"PaymentID"`
}

type Item struct {
	IData
	ChrtID     string `json:"chrt_id" db:"chrtid"`
	Price      int    `json:"price" db:"price"`
	Rid        string `json:"rid" db:"rid"`
	Name       string `json:"name" db:"name"`
	Sale       int    `json:"sale" db:"sale"`
	Size       string `json:"size" db:"size"`
	TotalPrice int    `json:"total_price" db:"totalprice"`
	NmID       int    `json:"nm_id" db:"nmid"`
	Brand      string `json:"brand" db:"brand"`
	ItemID     int    `db:"ItemID"`
}

var ItemQuery = `insert into "Items" (chrtid, price, rid, name, sale, size, totalprice, nmid, brand, ItemID) 
				values(:chrtid, :price, :rid, :name, :sale, :size, :totalprice, :nmid, :brand, :ItemID)`

var PaymentQuery = `insert into "Payments" (transaction, currency, provider, amount, paymentdt, bank, deliverycost,
																								goodstotal, PaymentID) 
					values(:transaction, :currency, :provider, :amount, :paymentdt, :bank, :deliverycost, :goodstotal,
																											:PaymentID)`

var OrderQuery = `insert into "Order" (orderuid, entry, internalsignature, locale, customerid, tracknumber, 
																			deliveryservice, shardkey, smid, paymentid)
				 values(:orderuid, :entry, :internalsignature, :locale, :customerid, :tracknumber, :deliveryservice,
																						:shardkey, :smid, :paymentid)`

func randomString(l int) string {
	bytes := make([]byte, l)
	for i := 0; i < l; i++ {
		bytes[i] = byte(randInt(65, 90))
	}
	return string(bytes)
}

func randInt(min int, max int) int {
	return min + rand.Intn(max-min)
}

//более формально подходящее использование паттерна

type ItemBench struct {
	c ICreator
}

func CodeExample1() {
	b1 := ItemBench{
		c: OrderCreator{},
	}
	b2 := ItemBench{
		c: ItemCreator{},
	}
	b1.c.Create(1)
	b2.c.Create(2)
}
