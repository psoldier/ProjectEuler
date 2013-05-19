#!/usr/bin/env ruby

capicua=0
for x in 100..999 do
	for y in 100..999 do
		num = x*y
		capicua = num if num.to_s == num.to_s.reverse && num > capicua
	end
end

puts capicua
