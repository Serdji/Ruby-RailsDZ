
2

player = { name: 'johnny', color: :red }
colors = [:blue, :white, :green, :red, :orange]

p player[:color] == colors.sample

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

p fibonacci (10)	    