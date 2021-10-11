#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative 'calculation'
require_relative 'input'

obj = Input.new
math = Calculate.new
cnt = 1
reg_str = '^[c,f,k]'
reg_digit = '^[-]?[0-9]+([.]?[0-9]+)?$'
while cnt == 1
  puts 'Enter temperature: '
  obj.temperature = gets.chomp
  unless obj.temperature.match(reg_digit)
    puts 'Incorrect input'
    next
  end
  obj.temperature = obj.temperature.to_f
  puts "Enter from (c,f,k): \n"
  obj.from = gets.chomp
  unless obj.from.match(reg_str)
    puts 'Incorrect input'
    next
  end
  puts "Enter to (c,f,k): \n"
  obj.to = gets.chomp
  unless obj.to.match(reg_str) && (obj.from != obj.to)
    puts 'Incorrect input'
    next
  end
  result = math.public_send("#{obj.from}_to_#{obj.to}", obj.temperature)
  puts result
  puts 'Enter 1 to continue or another key to exit'
  cnt = gets.chomp.to_i
  next if cnt == 1

  break
end
