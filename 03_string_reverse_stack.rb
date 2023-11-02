def reverse_string(string)
  stack = []
  reversed_string = ""

  string.each_char { |c| stack.push(c) }
  string.each_char { reversed_string += stack.pop }

  reversed_string
end

puts reverse_string("stressed") # => desserts
puts reverse_string("🌮 tacocat 😸") # => 😸tacocat🌮

# The original Python code:
# def reverse_string(a_string):
#   stack = []
#   string = ""
#   for c in a_string:
#     stack.append(c)
#   for c in a_string:
#     string += stack.pop()
#   return string

# print(reverse_string("Bieber"))