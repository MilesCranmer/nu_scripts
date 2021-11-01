#!/usr/bin/nu
# made by @skelly37 for everyone :)
#
# (sqrt skipped because of math module from nushell)
#
# BE CAREFUL WITH ROOTS MADE ON BIG NUMBERS (10 digits and more) — the result is rounded so you may get wrong result.
# just modify the round -p or calculate it manually

# cube root
def croot [num: number] {
	$num ** ( 1 / 3 ) | math round -p 10
}

# root with custom denominator, e.g. 2 ** 1/4
def root [ denominator: number, num: number ] {
	$num ** ( 1 / $denominator ) | math round -p 10
}

# totally custom root, e.g. 2 ** 3/8
def aroot [ scaler: number, denominator: number, num: number ] {
	$num ** ($scaler / $denominator) | math round -p 10
}

#discriminant of a quadratic equation
def delta [ a: number, b: number, c: number ] {
	( $b ** 2 ) - ( 4 * $a * $c)
}

#factorial of a given number, works fine only for n<21 (integer range)
def fact [num:number] {
	if $num >= 0 { if $num < 2 {$num} {seq 2 $num | math product} } { echo 'Error: can only calculate non-negative integers'}
}

#TODO:
# -sin, cos, tan table for 0-90 degrees
# -radians to degrees and reversed
# -sin, cos, tan, ctg, sec, cosec functions