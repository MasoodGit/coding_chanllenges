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

def reverse_list(list)
  #TODO

end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99,node1)
node3 = LinkedListNode.new(12,node2)
node4 = LinkedListNode.new(120,node3)

print_values(node4)
reversed_list = reverse_list(node4)
print_values(reversed_list)
