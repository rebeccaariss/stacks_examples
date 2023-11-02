class Stack
  def initialize
    @items = [] #private instance variable; stack should not be directly
    # accessible from outside of the class.
  end

  def push(data)
    @items << data
  end

  def pop
    @items.pop
  end

  def size
    @items.length
  end

  def is_empty
    @items.length == 0
  end

  def peek
    @items[-1]
  end
end

stack = Stack.new

puts stack.is_empty # => true

stack.push(1)
stack.push(2)
stack.push(3)

puts stack.size # => 3
puts stack.peek # => 3

popped_item = stack.pop
puts popped_item # => 3
puts stack.size # => 2
puts stack.is_empty # => false
puts stack.peek # => 2

# The original Python code:
# class Stack:
#   def __init__(self):
#     self.items = []

#   def push(self, data):
#     self.items.append(data)

#   def pop(self):
#     return self.items.pop()

#   def size(self):
#     return len(self.items)

#   def is_empty(self):
#     return len(self.items) == 0

#   def peek(self):
#     return self.items[-1]