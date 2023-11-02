class MinStack
  def initialize
    @main = []
    @min = []
  end

  def push(n)
    if @main.length == 0
      @min << n
    elsif n <= @min[-1]
      @min << n
    else
      @min << @min[-1]
    end

    @main << n
  end

  def pop
    @min.pop
    @main.pop # returns this line
  end

  def get_min
    @min[-1]
  end
end

minstack = MinStack.new

minstack.push(3)
minstack.push(4)
minstack.push(5)
minstack.push(2)
minstack.push(1)

puts minstack.get_min # => 1

minstack.pop
puts minstack.get_min # => 2

minstack.pop
puts minstack.get_min # => 3

# The original Python code:
# class MinStack():
#   def __init__(self):
#     self.main = []
#     self.min = []

#   def push(self, n):
#     if len(self.main) == 0:
#       self.min.append(n)
#     elif n <= self.min[-1]:
#       self.min.append(n)
#     else:
#       self.min.append(self.min[-1])
#     self.main.append(n)

#   def pop(self):
#     self.min.pop()
#     return self.main.pop()

#   def get_min(self):
#     return self.min[-1]