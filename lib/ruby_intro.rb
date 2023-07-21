# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each { |a| s = s + a}
  return s
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.pop
  else
    return (arr.sort!.pop)+(arr.sort!.pop)
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false 
  end
  arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  not_consonant = ["A", "E", "I", "O", "U"]
  if s.empty?
    return false
  end
  unless s[0].match?(/[[:alpha:]]/)
    return false 
  end
  unless not_consonant.include?(s[0].upcase)
    return true 
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  unless s.match?(/^[01]+$/)
    return false 
  end
  if s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price

  def price_as_string
    return "$%.2f" %[price]
  end
end
