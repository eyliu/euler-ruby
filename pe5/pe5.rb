#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-
#
# Problem 5
# 
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# 
# What is the smallest number that is evenly divisible by all of the number
# from 1 to 20?
#

stop = 20
primes = []
2.upto(stop) {|p| primes << p}

compositefactors = []
for p in primes
  2.upto(p) do |m|
    if m != p and p % m == 0
      compositefactors << p
    end
  end
end

primes -= compositefactors.uniq
exponents = Array.new(primes.length){1}
product = 1
0.upto(primes.length-1) do |m|
  1.upto(stop) do |x|
    if primes[m] ** x <= stop
      exponents[m] = x
    end
  end
  product *= primes[m] ** exponents[m]
end
puts product