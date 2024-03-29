package dev03

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"regexp"
	"strconv"
	"strings"
	"time"
	"unicode"
)

/*
=== Утилита sort ===

Отсортировать строки (man sort)
Основное

Поддержать ключи

-k — указание колонки для сортировки //ok
-n — сортировать по числовому значению //ok
-r — сортировать в обратном порядке //ok
-u — не выводить повторяющиеся строки  //ok

Дополнительное

Поддержать ключи

-M — сортировать по названию месяца
-b — игнорировать хвостовые пробелы
-c — проверять отсортированы ли данные
-h — сортировать по числовому значению с учётом суффиксов

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

type commandLineArgs map[string]interface{}

func getFileContent(fileName string) (string, error) {
	fileContent, err := ioutil.ReadFile(fileName)
	if err != nil {
		return "", err
	}
	return strings.TrimLeft(string(fileContent), " "), nil
}

func getWordsFromText(text string) ([][]string, error) {

	lines := strings.Split(strings.TrimLeft(text, " "), "\n")
	linesCopy := make([]string, len(lines))
	textWords := make([][]string, 0)
	maxLen := 0
	counter := 1

	copy(linesCopy, lines)

	for _, line := range lines {
		textWords = append(
			textWords,
			strings.Fields(strings.TrimLeft(line, " ")),
		)
		l := len(textWords[len(textWords)-1])
		if maxLen < l {
			maxLen = l
		}
		counter++
	}

	for index := range textWords {
		textWords[index] = append(
			textWords[index],
			make([]string, maxLen-len(textWords[index]))...,
		)
	}

	return textWords, nil
}

func getStringFirstNum(s string) (int, error) {
	if !unicode.IsDigit(rune(s[0])) {
		return -1, nil
	}
	re := regexp.MustCompile("[0-9]+")
	num, err := strconv.Atoi(re.FindString(s))
	if err != nil {
		return -1, err
	}
	return num, nil
}

//Sort sorts file content
func Sort() {

	args, err := parseCommandLineArgs()
	if err != nil {
		io.WriteString(os.Stderr, "grep: "+err.Error()+" ")
		os.Exit(1)
	}

	fileContent, err := getFileContent(args["fileName"].(string))
	if err != nil {
		io.WriteString(os.Stderr, err.Error())
		os.Exit(1)
	}

	if args["u"].(bool) {
		fileContent = strings.Join(createSet(strings.Split(fileContent, "\n")), "\n")
	}

	words, err := getWordsFromText(fileContent)
	lines := strings.Split(fileContent, "\n")

	if err != nil {
		io.WriteString(os.Stderr, err.Error())
		os.Exit(1)
	}

	sortColumn := make([]string, len(words))
	sortColumnIndex := args["k"].(int) - 1
	if sortColumnIndex > len(words[0]) {
		sortColumnIndex = 0
	}

	for i := range words {
		sortColumn[i] = words[i][sortColumnIndex]
	}

	var comp func(string, string) bool

	if args["b"].(bool) {
		comp = stringNoSpacesComparator
	} else if args["M"].(bool) {
		comp = monthComparator
	} else {
		comp = stringComparator
	}

	quickSort(words, lines, sortColumn, 0, len(sortColumn)-1, comp)

	firstAlphaInd := 0
	if args["n"].(bool) {
		for i := range words {
			if len(words[i][sortColumnIndex]) == 0 {
				continue
			} else if !unicode.IsDigit(rune(words[i][sortColumnIndex][0])) {
				firstAlphaInd = i
				break
			}
		}
		quickSort(words, lines, sortColumn, 0, firstAlphaInd-1, numericComparator)
		lines = append(lines, lines[0:firstAlphaInd]...)
		lines = lines[firstAlphaInd:]
	}

	if args["r"].(bool) {
		for i := 0; i < len(lines)/2; i++ {
			lines[i], lines[len(lines)-i-1] = lines[len(lines)-i-1], lines[i]
		}
	}
	for i := range lines {
		fmt.Println(lines[i])
	}
}

func monthComparator(s1, s2 string) bool {
	t, err := time.Parse(strings.ToUpper(s1), "Jan")
	nt, nerr := time.Parse(strings.ToUpper(s2), "Jan")
	if err != nil && nerr != nil {
		return stringComparator(s1, s2)
	} else if err != nil {
		return true
	} else if nerr != nil {
		return false
	}
	return t.Before(nt)
}

func stringNoSpacesComparator(s1, s2 string) bool {
	return strings.TrimRight(s1, " ") < strings.TrimRight(s2, " ")
}

func stringComparator(s1, s2 string) bool {
	return s1 < s2
}

func numericComparator(s1, s2 string) bool {
	n1, _ := getStringFirstNum(s1)
	n2, _ := getStringFirstNum(s2)
	return n1 < n2
}

func createSet(s []string) (res []string) {
	m := make(map[string]struct{})
	for _, val := range s {
		m[val] = struct{}{}
	}
	for key := range m {
		res = append(res, key)
	}
	return res
}

func parseCommandLineArgs() (commandLineArgs, error) {
	var (
		column       = flag.Int("k", 1, "specifying the column to sort")
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

	args["k"] = *column
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

func partition(words [][]string, lines []string, arr []string, low, high int, comp func(string, string) bool) ([]string, int) {
	pivot := arr[high]
	i := low
	for j := low; j < high; j++ {
		if comp(arr[j], pivot) {
			arr[i], arr[j] = arr[j], arr[i]
			lines[i], lines[j] = lines[j], lines[i]
			words[i], words[j] = words[j], words[i]
			i++
		}
	}
	arr[i], arr[high] = arr[high], arr[i]
	lines[i], lines[high] = lines[high], lines[i]
	words[i], words[high] = words[high], words[i]
	return arr, i
}

func quickSort(words [][]string, lines []string, arr []string, low, high int, comp func(string, string) bool) []string {
	if low < high {
		var p int
		arr, p = partition(words, lines, arr, low, high, comp)
		arr = quickSort(words, lines, arr, low, p-1, comp)
		arr = quickSort(words, lines, arr, p+1, high, comp)
	}
	return arr
}
