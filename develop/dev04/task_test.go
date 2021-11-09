package dev04

import "testing"

func TestIsRuneSetsEqual(t *testing.T) {
	rs1 := []rune("пятак")
	rs2 := []rune("пятка")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("пятак")
	rs2 = []rune("тяпка")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("пятка")
	rs2 = []rune("тяпка")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("листок")
	rs2 = []rune("слиток")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("столик")
	rs2 = []rune("слиток")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("листок")
	rs2 = []rune("столик")
	if !IsRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
}
