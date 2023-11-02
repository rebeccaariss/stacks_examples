class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Stack
  def initialize
    @head = nil
  end

  def push(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end
  end

  def pop
    if @head.nil?
      raise IndexError, 'pop from empty stack'
    end
    popped_node = @head
    @head = @head.next
    popped_node.data
  end
end

# The original Python code:
# class Node:
#   def __init__(self, data):
#     self.data = data
#     self.next = None

#   class Stack:
#     def __init__(self):
#       self.head = None

#     def push(self, data):
#       node = Node(data)
#       if self.head is None:
#         self.head = node
#       else:
#         node.next = self.head
#         self.head = node

#     def pop(self):
#       if self.head is None:
#         raise IndexError('pop from empty stack')
#       poppednode = self.head
#       self.head = self.head.next
#       return poppednode.data