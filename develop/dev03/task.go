package main

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"regexp"
	"sort"
	"strconv"
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

type commandLineArgs map[string]interface{}

var supportedKeys = "knruMbch"

func main() {
	strs := []string{
		"2",
		"3",
		"4",
		"5",
		"6",
		"dwd",
		"",
		"",
		"",
		"",
	}

	sort.Strings(strs)
}

func getStrungFirstNum(s string) (int, error) {
	re := regexp.MustCompile("[0-9]+")
	num, err := strconv.Atoi(re.FindString(s))
	if err != nil {
		return 0, err
	}
	return num, nil
}

func Sort() {
	_, err := parseCommandLineArgs()
	if err != nil {
		io.WriteString(os.Stderr, "grep: "+err.Error()+" ")
		os.Exit(1)
	}

}

func parseFile(fileName string) ([][]string, error) {

	fileContent, err := ioutil.ReadFile(fileName)
	if err != nil {
		return nil, err
	}
	lines := strings.Split(string(fileContent), "\n")
	fmt.Println(lines)

	return nil, nil
}

func createSet(s []string) (res []string) {
	m := make(map[string]struct{})
	for _, val := range s {
		m[val] = struct{}{}
	}
	for key, _ := range m {
		res = append(res, key)
	}
	return res
}

func parseCommandLineArgs() (commandLineArgs, error) {
	var (
		columns      = flag.String("k", "", "specifying the column to sort")
		numeric      = flag.Bool("n", false, "sort by numerical value")
		reverse      = flag.Bool("r", false, "sort in reverse order")
		unique       = flag.Bool("u", false, "do not print duplicate lines")
		month        = flag.Bool("M", false, "sort by month name")
		trimRight    = flag.Bool("b", false, "ignore trailing spaces")
		isSorted     = flag.Bool("c", false, "check if data is sorted")
		humanNumeric = flag.Bool("h", false, "sort by numerical value taking into account suffixes")
		args         = make(map[string]interface{})
	)
	flag.Parse()

	columnsStr := strings.Split(*columns, ",")
	columnsInt := make([]int, 0)
	for _, v := range columnsStr {
		num, err := strconv.Atoi(v)
		if err != nil {
			return nil, err
		}
		columnsInt = append(columnsInt, num)
	}

	args["k"] = columnsInt
	args["n"] = *numeric
	args["r"] = *reverse
	args["u"] = *unique
	args["M"] = *month
	args["b"] = *trimRight
	args["c"] = *isSorted
	args["h"] = *humanNumeric

	notKeyArgs := flag.Args()

	if len(notKeyArgs) < 1 {
		return nil, errors.New("grep: not enough arguments")
	}

	args["fileName"] = notKeyArgs[0]

	return args, nil
}
