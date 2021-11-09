package dev04

import (
	"sort"
	"strings"
)

/*
=== Поиск анаграмм по словарю ===

Напишите функцию поиска всех множеств анаграмм по словарю.
Например:
'пятак', 'пятка' и 'тяпка' - принадлежат одному множеству,
'листок', 'слиток' и 'столик' - другому.

Входные данные для функции: ссылка на массив - каждый элемент которого - слово на русском языке в кодировке utf8.
Выходные данные: Ссылка на мапу множеств анаграмм.
Ключ - первое встретившееся в словаре слово из множества
Значение - ссылка на массив, каждый элемент которого, слово из множества. Массив должен быть отсортирован по возрастанию.
Множества из одного элемента не должны попасть в результат.
Все слова должны быть приведены к нижнему регистру.
В результате каждое слово должно встречаться только один раз.

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/
func GetMap(s []string) map[string][]string {
	m := make(map[string][]string)
	var added bool
	for _, str := range s {
		str = strings.ToLower(str)
		for k := range m {
			if IsRuneSetsEqual([]rune(strings.ToLower(k)), []rune(str)) {
				m[k] = append(m[k], str)
				added = true
			}
		}
		if added {
			added = false
		} else {
			m[str] = make([]string, 0)
		}
	}
	for k := range m {
		if len(m[k]) != 0 {
			m[k] = CreateSet(m[k])
			sort.Strings(m[k])
		} else {
			delete(m, k)
		}
	}
	return m
}

func IsRuneSetsEqual(s1, s2 []rune) bool {

	l1 := len(s1)
	l2 := len(s2)
	s1cp := make([]rune, 0)
	s2cp := make([]rune, 0)
	s1cp = append(s1cp, s1...)
	s2cp = append(s2cp, s2...)
	s1cp = QuickSort(s1cp, 0, l1-1)
	s2cp = QuickSort(s2cp, 0, l2-1)

	for i := 0; i < l1; i++ {
		if s1cp[i] != s2cp[i] {
			return false
		}
	}

	return true
}

func CreateSet(s []string) (res []string) {
	m := make(map[string]struct{})
	for _, val := range s {
		m[val] = struct{}{}
	}
	for key := range m {
		res = append(res, key)
	}
	return res
}

func Partition(arr []rune, low, high int) ([]rune, int) { //разделение массива на две части перестановками элементов
	//в результате слева от индекса i элементы arr[k] < arr[i], справа элементы arr[k] > arr[i]
	pivot := arr[high]
	i := low
	for j := low; j < high; j++ {
		if arr[j] > pivot {
			arr[i], arr[j] = arr[j], arr[i]
			i++
		}
	}
	arr[i], arr[high] = arr[high], arr[i]
	return arr, i
}

func QuickSort(arr []rune, low, high int) []rune {
	if low < high { //база рекурсии - длина подмассива > 2
		var p int
		arr, p = Partition(arr, low, high) //слева от p - элементы arr[i] < arr[p], справа от p - элементы arr[i] > arr[p]
		arr = QuickSort(arr, low, p-1)     //рекурсивный вызов алгоритма для левого подмассива
		arr = QuickSort(arr, p+1, high)    //рекурсивный вызов для правого подмассива
	}
	return arr
}
