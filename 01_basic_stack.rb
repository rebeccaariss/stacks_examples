class Stack
  def initialize
    @items = []
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