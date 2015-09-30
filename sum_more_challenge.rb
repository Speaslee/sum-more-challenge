require 'csv'
require 'pry'


numbers=[]
File.foreach("numbers.csv", converters: :all) do |row|
  row.split("\n")
  numbers << row
end
first_line=0
line_first = numbers.first.split ","
line_first.each do |num|

  first_line = first_line + num.to_i
end
puts first_line


counter = 0
nums= 0
numbers.each do |line|
all_nums = line.split ","
all_nums.each do |total|
  nums= nums + total.to_i
  counter= counter +1
end
end
puts nums
