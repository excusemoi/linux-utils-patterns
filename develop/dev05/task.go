package dev05

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"reflect"
	"regexp"
	"strings"

	"github.com/fatih/color"
)

/*
=== Утилита grep ===

Реализовать утилиту фильтрации (man grep)

Поддержать флаги:
-A - "after" печатать +N строк после совпадения
-B - "before" печатать +N строк до совпадения
-C - "context" (A+B) печатать ±N строк вокруг совпадения
-c - "count" (количество строк)
-i - "ignore-case" (игнорировать регистр)
-v - "invert" (вместо совпадения, исключать)
-F - "fixed", точное совпадение со строкой, не паттерн
-n - "line num", печатать номер строки

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

type commandLineArgs map[string]interface{}

var redBoldColor = color.New(color.FgRed, color.Bold)

func parseGrepCommandLineArgs() (commandLineArgs, error) {

	var (
		after      = flag.Int("A", 0, "print +N lines after match")
		before     = flag.Int("B", 0, "print +N lines until match")
		context    = flag.Int("C", 0, "print ±N lines around the match")
		count      = flag.Bool("c", false, "print the number of lines")
		ignoreCase = flag.Bool("i", false, "ignore case")
		reverse    = flag.Bool("v", false, "instead of a match, exclude")
		fixed      = flag.Bool("F", false, "an exact match on a string, not a pattern")
		lineNum    = flag.Bool("n", false, "print line number")
		args       = make(map[string]interface{})
	)
	flag.Parse()

	args["A"] = *after
	args["B"] = *before
	args["C"] = *context
	args["c"] = *count
	args["i"] = *ignoreCase
	args["v"] = *reverse
	args["F"] = *fixed
	args["n"] = *lineNum

	notKeyArgs := flag.Args()

	if len(notKeyArgs) < 2 {
		return nil, errors.New("grep: not enough arguments")
	}

	args["pattern"] = notKeyArgs[0]
	args["fileName"] = notKeyArgs[1]

	return args, nil

}

//GrepFilter filters file content
func GrepFilter() {

	args, err := parseGrepCommandLineArgs()
	if err != nil {
		io.WriteString(os.Stderr, err.Error()+" ")
		os.Exit(1)
	}

	action := ""

	actionCounter := 0
	for key, value := range args {
		if key == "A" || key == "B" ||
			key == "C" || key == "v" ||
			key == "c" {
			if (reflect.TypeOf(value).Kind() == reflect.Int && value.(int) > 0) ||
				(reflect.TypeOf(value).Kind() == reflect.Bool && value.(bool)) {
				action = key
				actionCounter++
			}
			if actionCounter > 1 {
				io.WriteString(os.Stderr, "grep: too many actions, choose one of A, B, C, c, v ")
				os.Exit(1)
			}
		}
	}

	pattern := args["pattern"].(string)

	if args["i"].(bool) && !args["F"].(bool) {
		pattern = "(?i)" + pattern
	}

	r := regexp.MustCompile(pattern)

	fileContent, err := ioutil.ReadFile(args["fileName"].(string))
	if err != nil {
		io.WriteString(os.Stderr, "grep: "+err.Error()+" ")
		os.Exit(1)
	}

	printString := func(s string, i int) {
		if args["n"].(bool) {
			fmt.Println(i)
		} else {
			fmt.Println(s)
		}
	}

	counter := 0
	lines := strings.Split(string(fileContent), "\n")
	indices := make([][]int, 0)

	for i, line := range lines {

		if !args["F"].(bool) {
			indices = r.FindAllIndex([]byte(line), -1)
		} else {
			if args["i"].(bool) {
				indices = findAllIndex(strings.ToLower(line), strings.ToLower(pattern))
			} else {
				indices = findAllIndex(line, pattern)
			}
		}

		if len(indices) != 0 {
			switch action {
			case "A":
				for j := i + 1; j < i+args["A"].(int)+1; j++ {
					if j == len(lines)-1 {
						break
					}
					printString(lines[j], j+1)
				}
			case "B":
				N := args["B"].(int)
				leftInd := 0
				if i-N > 0 {
					leftInd = i - N
				}
				for j := leftInd; j < i; j++ {
					printString(lines[j], j+1)
				}
			case "C":
				N := args["C"].(int)
				leftInd := 0
				if i-N > 0 {
					leftInd = i - int(N)
				}
				for j := leftInd; j <= N+i+1; j++ {
					if j == i {
						continue
					} else if j == len(lines)-1 {
						break
					}
					printString(lines[j], j+1)
				}
			case "c":
				counter++
			case "":
				coloredLine := ""
				leftInd := 0
				for k := 0; k < len(indices); k++ {
					if k > 0 {
						leftInd = indices[k-1][1]
					}
					coloredLine += fmt.Sprintf("%s%s",
						line[leftInd:indices[k][0]],
						redBoldColor.Sprint(line[indices[k][0]:indices[k][1]]))
					if k == len(indices)-1 {
						coloredLine += line[indices[k][1]:]
					}
				}
				printString(coloredLine, i+1)
			}
		}
	}
	if args["c"].(bool) {
		fmt.Println(counter)
	}
}

func findAllIndex(s, substr string) [][]int {
	indices := make([][]int, 0)
	j := 0
	for i := 0; i < len(s); i++ {
		if s[i] == substr[j] {
			j++
			if j == len(substr) {
				indices = append(indices, make([]int, 2))
				indices[len(indices)-1][0] = i - j + 1
				indices[len(indices)-1][1] = i + 1
				j = 0
			}
		} else {
			j = 0
		}
	}
	return indices
}

//шутки для
/*func parseGrepCommandLineArgs(s []string) (*commandLineArgs, error) {
	l := len(s)

	if l < 2 {
		return nil, errors.New("grep: incorrect amount of arguments ")
	}

	var (
		cl = commandLineArgs{
			keys: make([]string, 1),
		}
	)

	for i := 0; i < len(s); i++ {
		if s[i][0] == '-' {
			for j := 1; j < len(s[i]); j++ {
				if !strings.Contains(supportedKeys, string(s[i][j])) {
					return nil, fmt.Errorf("grep: incorrect key %s ", string(s[i][j]))
				} else if s[i][j] == 'A' || s[i][j] == 'B' || s[i][j] == 'C' {
					cl.keys[len(cl.keys)-1] += string(s[i][j])
					if j != len(s[i])-1 {
						cl.keys = append(cl.keys, "")
						k := j + 1
						for ; k < len(s[i]) && unicode.IsDigit(rune(s[i][k])); k++ {
							cl.keys[len(cl.keys)-1] += string(s[i][k])
						}
						j = k - 1
					}
				} else {
					if unicode.IsDigit(rune(s[i][j])) {
						continue
					}
					cl.keys = append(cl.keys, string(s[i][j]))
				}
			}
		} else if cl.pattern == "" {
			cl.pattern = s[i]
		} else {
			cl.fileName = s[i]
		}
	}
	return &cl, nil
}*/
