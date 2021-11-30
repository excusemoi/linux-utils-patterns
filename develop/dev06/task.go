package dev06

import (
	"bufio"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

/*
=== Утилита cut ===

Принимает STDIN, разбивает по разделителю (TAB) на колонки, выводит запрошенные

Поддержать флаги:
-f - "fields" - выбрать поля (колонки)
-d - "delimiter" - использовать другой разделитель
-s - "separated" - только строки с разделителем

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

type commandLineArgs map[string]interface{}

func parseCutCommandLineArgs() (commandLineArgs, error) {

	colNum := flag.String("f", "", "# of column for output")
	onlyDelimLines := flag.Bool("s", false, "select only delimeted lines ")
	delim := flag.String("d", ",", "select custom delimeter")
	flag.Parse()

	var (
		args    commandLineArgs = make(map[string]interface{})
		colNums []int
	)

	colNumsStr := strings.Split(*colNum, *delim)
	for _, numStr := range colNumsStr {
		num, err := strconv.ParseInt(numStr, 10, 64)
		if err != nil {
			return nil, err
		}
		colNums = append(colNums, int(num))
	}

	if len(colNums) == 0 {
		return nil, errors.New("cut: you must specify a list of fields")
	}

	args["f"] = quickSort(colNums, 0, len(colNums)-1)
	args["s"] = *onlyDelimLines
	args["d"] = *delim

	return args, nil
}

//Cut implements cut utility
func Cut() {

	args, err := parseCutCommandLineArgs()
	if err != nil {
		io.WriteString(os.Stderr, err.Error())
	}

	reader := bufio.NewReader(os.Stdin)
	lines := make([][]string, 0)

	for i := 0; ; {

		line, _ := reader.ReadString('\n')
		if line == "\n" {
			break
		} else if args["s"].(bool) &&
			!strings.Contains(line, args["d"].(string)) {
			continue
		}

		lines = append(lines, make([]string, 0))
		lines[i] = strings.Split(
			strings.TrimRight(line, "\n"),
			args["d"].(string),
		)
		i++
	}

	for _, line := range lines {
		j := 0
		for i, word := range line {
			if i+1 == args["f"].([]int)[j] {
				fmt.Print(word)
				if j == len(args["f"].([]int))-1 {
					fmt.Println()
					break
				} else {
					fmt.Print(args["d"])
				}
				j++
			}
		}
	}

	return
}

func partition(arr []int, low, high int) ([]int, int) { //разделение массива на две части перестановками элементов
	//в результате слева от индекса i элементы arr[k] < arr[i], справа элементы arr[k] > arr[i]
	pivot := arr[high]
	i := low
	for j := low; j < high; j++ {
		if arr[j] < pivot {
			arr[i], arr[j] = arr[j], arr[i]
			i++
		}
	}
	arr[i], arr[high] = arr[high], arr[i]
	return arr, i
}

func quickSort(arr []int, low, high int) []int {
	if low < high { //база рекурсии - длина подмассива > 2
		var p int
		arr, p = partition(arr, low, high) //слева от p - элементы arr[i] < arr[p], справа от p - элементы arr[i] > arr[p]
		arr = quickSort(arr, low, p-1)     //рекурсивный вызов алгоритма для левого подмассива
		arr = quickSort(arr, p+1, high)    //рекурсивный вызов для правого подмассива
	}
	return arr
}
