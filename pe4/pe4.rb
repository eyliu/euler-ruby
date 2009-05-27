#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-
#
# Problem 4
# 
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
#

start = 100
stop = 999
candidates = []
start.upto(stop) do |m|
  m.upto(stop) do |n|
    product = m*n
    s = product.to_s
    if s == s.reverse
      candidates << product
    end
  end
end

puts candidates.uniq.sort[-1]