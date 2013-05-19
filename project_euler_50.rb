#!/usr/bin/env ruby
require 'prime'

# The prime 41, can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

def ejercicio50
  limite_sumatoria_primos = 1000
	primos = Prime.each(limite_sumatoria_primos).to_a
	primo,consecutivos_max=0,0
	primos.size.times do
	  suma_primos = 0
	  primos.each_with_index do |p, index| 
	    suma_primos = suma_primos + p
			break unless suma_primos < limite_sumatoria_primos 
	    if suma_primos.prime? && consecutivos_max < index 
	      primo, consecutivos_max = suma_primos, index
	    end
	  end
	  primos.shift
	end
  primo
end

puts ejercicio50
