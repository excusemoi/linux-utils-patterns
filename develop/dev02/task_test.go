package dev02

import "testing"

func TestUnpackString1(t *testing.T) {
	res, _ := UnpackString("a4bc2d5e")
	if res != "aaaabccddddde" {
		t.Errorf("%s != %s", res, "aaaabccddddde")
	}
	res, _ = UnpackString("abcd")
	if res != "abcd" {
		t.Errorf("%s != %s", res, "abcd")
	}
	res, _ = UnpackString("qwe\\4\\5")
	if res != "qwe45" {
		t.Errorf("%s != %s", res, "qwe45")
	}
	res, _ = UnpackString("qwe\\45")
	if res != "qwe44444" {
		t.Errorf("%s != %s", res, "qwe44444")
	}
	res, _ = UnpackString("")
	if res != "" {
		t.Errorf("%s != %s", res, "")
	}
	res, err := UnpackString("45")
	if err == nil {
		t.Errorf("%s is incorrect", "45")
	}
	res, _ = UnpackString("qwe\\\\5")
	if res != "qwe\\\\\\\\\\" {
		println(res)
		t.Errorf("%s != %s", res, "qwe\\\\\\\\\\")
	}
	res, _ = UnpackString("q10")
	if res != "qqqqqqqqqq" {
		println(res)
		t.Errorf("%s != %s", res, "qwe\\\\\\\\\\")
	}
}
