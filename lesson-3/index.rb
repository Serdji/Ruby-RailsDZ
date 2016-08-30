elements = [:one, :two, :three, :four]

def combinations(array, number)
  m = array.size
  arr = (1...2**m).map do | n |
    (0...m).select { | i | n[i] == 1 }.map { | i | array[i] }
  end
  arr.select{|x| x.size == number}
end

p combinations(elements, 3)