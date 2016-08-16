2

Fixnum.next
Fixnum.zero?
Fixnum.abs

Float.floor
Float.divmod

String.capitalize
String.succ
String.strip

Array.delete
Array.shuffle
Array.join

Hash.shuffle 
Hash + Hash

(10..20).max

3

results = [10, 2, 5, 12, 11, 11, 4]
i = 0

for sum in results
  puts "Партия: #{i += 1} / Выпало очков: #{sum}"
end

4

4.1 Hash
4.2 Array
4.3 Hash
4.4 Fixnum
4.5 Array - Float
4.6 String
4.7 Hash
4.8 Fixnum
4.9 String

5

class String
  def -(value)
    self.delete(value)
  end
end

puts "Hello, my Ruby world!" - "om"