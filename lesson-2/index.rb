
2

player = { name: 'johnny', color: :green }
colors = [:blue, :white, :green, :red, :orange]

def guess_color(player, colors)
  if player[:color] == colors.sample
    "#{player[:name]}, Ты прав!"
  elsif player[:color].size == colors.sample.size
    "#{player[:name]}, букв столько же, но значение иное!"
  else
    "Все не верно #{player[:name]} :("  
  end 
end

p guess_color(player, colors)  

3

names = %w[ambientsketchbook Erik\ Wollo Brian\ Eno Evangelos\ Papathanassiou Shulman]

p names.select{|el| el.size < 10 && el[0] == el[0].upcase}

4

arr = ["Ruby", "Python", "JavaScript", "Java", ".NET", "HTML", "Clojure"]

hash = arr.inject({}) do |memo, values|
  memo.merge!(values => values.size)
end

hash["Go"] = 2

p hash

5

def fibonacci(n)
  return 1 if n < 3
  fibonacci(n - 1) + fibonacci(n - 2)
end    

p fibonacci (11) 

def fib(n)
  a = 1
  b = 1
  i = 3
  (i..n).each do |i|
    i += 1 
    c = a + b
    a = b
    b = c
  end
  return b
end

p fib (11)

def rot13(str)
  rot13 = ""
  lower_case = ("a".."z").to_a.join + "!?&$@/-_;:,." + (0..9).to_a.join
  upper_case = lower_case.upcase
  lower_case = lower_case.each_char.to_a
  upper_case = upper_case.each_char.to_a
  char = str.each_char.to_a
  (0...char.length).each do |i|
    rot13 += if char[i] == ' '
      ' '           
    elsif (char[i] == char[i].upcase)
      loc = upper_case.index(char[i])
      idx = (loc + 13)%26
      upper_case[idx]
    else
      loc = lower_case.index(char[i])
      idx = (loc + 13)%26
      lower_case[idx]
    end
  end
  rot13
end
 
p rot13("Lbh unpxrq n irel frperg zrffntr")