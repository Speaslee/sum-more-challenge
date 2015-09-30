require 'csv'
require 'pry'


numbers=[]
File.foreach("numbers.csv", converters: :all) do |row|
  row.split
  numbers << row.to_i
end

sum_all = numbers
puts sum_all.reduce(:+)
