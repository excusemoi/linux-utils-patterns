package pattern

/*
	Реализовать паттерн «фасад».
Объяснить применимость паттерна, его плюсы и минусы,а также реальные примеры использования данного примера на практике.
	https://en.wikipedia.org/wiki/Facade_pattern
*/

import (
	"io/ioutil"
	"net/http"
	"net/url"
	"regexp"
)

type StringTitleParser struct {
}

func (*StringTitleParser) getTitleFromString(content string) string {
	r := regexp.MustCompile(`<title>(.*?)</title>`)
	strs := r.FindAllString(content, 1)
	if strs != nil {
		return strs[0]
	}
	return ""
}

type LinkValidator struct {
}

func (*LinkValidator) IsLinkValid(l string) bool {
	if _, err := url.ParseRequestURI(l); err != nil {
		return false
	}
	return true
}

type ContentLinkGetter struct {
}

func (*ContentLinkGetter) Get(l string) string {
	resp, _ := http.Get(l)
	content, _ := ioutil.ReadAll(resp.Body)
	return string(content)
}

type TitleGetter struct {
}

//фасад
func (*TitleGetter) GetTitleFromLink(l string) string {
	validator := LinkValidator{}
	if !validator.IsLinkValid(l) {
		return ""
	}
	contentGetter := ContentLinkGetter{}
	content := contentGetter.Get(l)
	if content == "" {
		return content
	}
	stp := StringTitleParser{}
	title := stp.getTitleFromString(l)
	return title
}
