class Stack

  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    if @data.nil?
      @data = LinkedListNode.new(value)
    else
      @data = LinkedListNode.new(value,@data)
    end
  end

  def pop
    if @data.nil?
      return nil
    else
      returnVal = @data.value
      @data = @data.next_node
      return returnVal
    end
  end
end

class LinkedListNode
  attr_accessor :value, :next_node
  def initialize(value,next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node.nil?
    return
  end
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list_node)

  print_values(list_node)

  # initialize new stack
  stack = Stack.new
  # push the items into a stack
  while list_node != nil
    stack.push(list_node.value)
    list_node = list_node.next_node
  end

  # points to the first node in the reversed linked list
  head = nil

  # points to the one node behind the currentNode
  prevNode = nil

  # iterate , pop values from stack
  # and create new reversed linked list
  while (currentValue = stack.pop) != nil
    if head == nil
      head = LinkedListNode.new(currentValue)
      prevNode = head
    else
      currentNode = LinkedListNode.new(currentValue)
      prevNode.next_node = currentNode
      prevNode = currentNode
    end
  end
  print_values(head)
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99,node1)
node3 = LinkedListNode.new(12,node2)
node4 = LinkedListNode.new(120,node3)

#print_values(node3)
reverse_list(node4)
