package dev09

import (
	"flag"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"os"
	"strings"

	"github.com/gocolly/colly"
)

/*
=== Утилита wget ===

Реализовать утилиту wget с возможностью скачивать сайты целиком

Программа должна проходить все тесты. Код должен проходить проверки go vet и golint.
*/

//Wget implements wget
func Wget() {

	depth := flag.Int("l", 1, "max depth")
	flag.Parse()
	notKeyArgs := flag.Args()

	if len(notKeyArgs) == 0 {
		io.WriteString(os.Stderr, "wget: not enough arguments ")
		os.Exit(1)
	}

	filesDir := strings.Replace(notKeyArgs[0], "/", "", -1)

	c := colly.NewCollector(
		colly.MaxDepth(*depth),
	)

	os.Mkdir(filesDir, 0755)

	c.OnResponse(func(r *colly.Response) {
		err := r.Save(filesDir + "/" + strings.Replace(r.Request.URL.String(), "/", "", -1))
		if err != nil {
			fmt.Println("wget:" + err.Error() + "\n")
		}
	})

	c.OnRequest(func(r *colly.Request) {
		fmt.Println("wget: downloading", r.URL)
	})

	c.OnHTML("a[href]", func(e *colly.HTMLElement) {
		link := e.Attr("href")
		fmt.Println("wget: downloading", link)
		resp, err := http.Get(link)
		if err != nil {
			fmt.Println("wget:" + err.Error() + "\n")
			return
		}
		content, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			fmt.Println("wget:" + err.Error() + "\n")
			return
		}
		f, err := os.Create(filesDir + "/" + strings.Replace(link, "/", "", -1))
		if err != nil {
			fmt.Println("wget:" + err.Error() + "\n")
			return
		}
		fmt.Println()
		defer f.Close()
		f.Write(content)
		e.Request.Visit(link)
	})

	c.Visit(notKeyArgs[0])

}

/*func getLinksRecursively(link string, links [][]string, order int) error {

	if order == len(links) {
		return nil
	}

	fmt.Println(link)

	content, err := getContentFromLink(link)
	if err != nil {
		return err
	}

	title := getTitleFromContent(content)
	if title == "" {
		title = link
	}
	err = writeContentToFile(title, content)
	if err != nil {
		return err
	}

	links = append(links, xurls.Relaxed().FindAllString(string(content), -1))

	for _, l := range links[len(links)-1] {
		getLinksRecursively(l, links, order)
	}

	return nil
}

func getTitleFromContent(content []byte) string {
	r := regexp.MustCompile(`<title>(.*?)</title>`)
	s := r.FindAll(content, -1)
	if len(s) != 0 {
		return strings.TrimRight(
			strings.TrimLeft(
				string(s[len(s)-1]), "<title>"),
			"</title>",
		)
	}
	return ""
}

func getContentFromLink(link string) ([]byte, error) {
	resp, err := http.Get(link)
	if err != nil {
		return nil, err
	}

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	return body, nil
}

func writeContentToFile(fileName string, content []byte) error {
	file, err := os.Create(fileName)
	if err != nil {
		return err
	}
	_, err = file.Write(content)
	if err != nil {
		return err
	}
	return nil
}*/

func main() {
	Wget()
}
