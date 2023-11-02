def check_parentheses(string)
  stack = []

  string.each_char do |c|
    if c == "("
      stack.push(c)
    elsif c == ")"
      return false if stack.length == 0
      stack.pop # if the stack is not empty, we remove the opening bracket from
      # the stack and begin our checks again
    end
  end

    stack.length == 0 # if empty, will resolve to true (meaning each bracket
    # closes at some point). if it's not empty, that means it contains an
    # opening bracket, therefore not all parens are closed.
end

puts check_parentheses("(This should return true (all brackets close))") # => true
puts check_parentheses("(This should return false") # => false
puts check_parentheses(")( )(") # => false

# The original Python code:
# def check_parentheses(a_string):
#   stack = []
#   for c in a_string:
#     if c == "(":
#       stack.append(c)
#     if c == ")":
#       if len(stack) == 0:
#         return False
#       else:
#         stack.pop()
#   return len(stack) == 0