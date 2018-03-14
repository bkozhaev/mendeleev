require 'json'

file = File.read('mendeleev.json', encoding: 'utf-8')

table = JSON.parse(file)

puts "У нас есть #{table.keys.size} элементов"
puts table.keys
puts "О каком элементе хотите узнать?"

element = gets.chomp.capitalize

if table.key?(element)
  puts "Порядковый номер элемента: #{table[element]['number']}"
  puts "Название элемента: #{table[element]['name']}"
  puts "Первооткрыватель элемента: #{table[element]['discoverer']}"
  puts "Плотность элемента: #{table[element]['density']}"
else
  puts "Извини, мы пока хз что это за элемент"
end