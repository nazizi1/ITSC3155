# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, #{name}"
end

# Part II
def starts_with_consonant? s
  consonant = /^[^aeiou\d\W_]/i
  return true if consonant.match(s)
end

# Part III
def binary_multiple_of_4? s
	if (s.to_s =~/\b[01]+\b/ && s.to_i % 4 == 0)
	  return true
	else
	  return false
	end
end
