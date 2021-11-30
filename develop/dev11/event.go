package main

import (
	"encoding/json"
	"time"
)

type event struct {
	date  time.Time
	title string
}

func eventToJson(e *event) ([]byte, error) {
	res, err := json.MarshalIndent(e, "", "\t")
	if err != nil {
		return nil, err
	}
	return res, nil
}
