package main

import (
	"errors"
	"log"
	"os"
	"strings"
)

/*
=== Утилита sort ===

Отсортировать строки (man sort)
Основное

Поддержать ключи

-k — указание колонки для сортировки
-n — сортировать по числовому значению
-r — сортировать в обратном порядке
-u — не выводить повторяющиеся строки

Дополнительное

Поддержать ключи

-M — сортировать по названию месяца
-b — игнорировать хвостовые пробелы
-c — проверять отсортированы ли данные
-h — сортировать по числовому значению с учётом суффиксов

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

var supportedKeys = "knruMbch"

func main() {
}

func Sort() {
	args, err := parseCommandLineArgs(os.Args)
	if err != nil {
		log.Fatal(err)
	}
	println(string(args))
}

func parseCommandLineArgs(args []string) ([]rune, error) {
	var (
		res = make([]rune, 0)
		err = errors.New("incorrect command line arguments")
		l   = len(args)
	)
	if l < 2 {
		return nil, err
	}
	for i := 1; i < l; i++ {
		lai := len(args[i])
		if lai < 2 || rune(args[i][0]) != '-' {
			return nil, err
		} else {
			for j := 1; j < lai; j++ {
				if !strings.Contains(supportedKeys, string(args[i][j])) {
					return nil, err
				}
				res = append(res, rune(args[i][j]))
			}
		}
	}
	return res, nil
}
