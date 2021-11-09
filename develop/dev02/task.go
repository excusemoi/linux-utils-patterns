package dev02

import (
	"unicode"
	"errors"
)

/*
=== Задача на распаковку ===

Создать Go функцию, осуществляющую примитивную распаковку строки, содержащую повторяющиеся символы / руны, например:
	- "a4bc2d5e" => "aaaabccddddde"
	- "abcd" => "abcd"
	- "45" => "" (некорректная строка)
	- "" => ""
Дополнительное задание: поддержка escape - последовательностей
	- qwe\4\5 => qwe45 (*)
	- qwe\45 => qwe44444 (*)
	- qwe\\5 => qwe\\\\\ (*)

В случае если была передана некорректная строка функция должна возвращать ошибку. Написать unit-тесты.

Функция должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

//UnpackString unpacks string :)
func UnpackString(s string) (string, error) {
	var (
		res     = make([]rune, 0)
		sr      = []rune(s)
		count   = 0
		r rune
		skip    = 0
	)

	if s == "" {
		return s, nil
	}

	for i := 0; i < len(sr); i++ {

		if skip == 1 {
			skip = 0
			continue
		}

		if unicode.IsDigit(sr[i]) {
			if len(res) == 0 {
				return "", errors.New("Incorrect string")
			}
			count = count * 10 + (int(sr[i]) - '0')
			if i == len(sr) - 1 {
				for j := 0; j < count - 1; j++ {
					res = append(res, r)
				}
			}
		} else if sr[i] != '\\'{
			if count != 0 {
				for j := 0; j < count - 1; j++ {
					res = append(res, r)
				}
				count = 0
			}
			res = append(res, sr[i])
			r = sr[i]

		} else {
			if i != len(sr) - 1 {
				res = append(res, sr[i+1])
				r = sr[i+1]
				skip = 1
			} else {
				res = append(res, sr[i])
			}
		}
	}
	return string(res), nil
}

