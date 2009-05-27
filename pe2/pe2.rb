#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-
#
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# Find the sum of all the even-valued terms in the sequence which do not
# exceed four million.
#

stop = 4000000
sum = 0
prevFib = 1
fib = 1
while fib < stop
  if fib % 2 == 0
    sum += fib
  end
  nextFib = fib + prevFib
  prevFib, fib = fib, nextFib
end
puts sum  