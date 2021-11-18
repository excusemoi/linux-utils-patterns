package dev04

import "testing"

func TestIsRuneSetsEqual(t *testing.T) {
	rs1 := []rune("пятак")
	rs2 := []rune("пятка")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("пятак")
	rs2 = []rune("тяпка")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("пятка")
	rs2 = []rune("тяпка")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("листок")
	rs2 = []rune("слиток")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("столик")
	rs2 = []rune("слиток")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
	rs1 = []rune("листок")
	rs2 = []rune("столик")
	if !isRuneSetsEqual(rs1, rs2) {
		t.Errorf("%s != %s", string(rs1), string(rs2))
	}
}
