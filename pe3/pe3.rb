#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-
#
# Problem 3
# 
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
#

n = 600851475143
factors = []
max = (n**(1/2.0)).to_i
2.upto(max) do |f|
  if n % f == 0:
    factors << f
  end
end
puts factors
puts ""

compositefactors = []
for factor in factors
  max = (factor**(1/2.0)).to_i
  2.upto(max) do |f|
    if factor % f == 0:
      compositefactors << factor
    end
  end
end
puts compositefactors
puts""

factors -= compositefactors
puts factors
puts ""
puts factors[-1]