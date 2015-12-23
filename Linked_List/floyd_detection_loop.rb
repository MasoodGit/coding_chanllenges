class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end


def find_loop(list_node)
  hare = list_node
  tortoise = list_node
  while true
    if hare == nil
      return false
    end
    hare = hare.next_node
    if hare == nil
      return false
    end
    hare = hare.next_node
    tortoise = tortoise.next_node

    if hare == tortoise
      return true
    end

  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

#print_values(node3)
puts find_loop(node3)
