class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def count
    @queue.length
  end
end

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end


# The "Leafs" of a tree, elements that have no children
fifth_node    = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])


# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, fifth_node])


def bfs_traversal (root,queue)
  return if root == nil
  queue.enqueue(root)
  while(queue.count >=  1)
    currentNode = queue.dequeue()
    #puts currentNode.inspect
    puts "#{currentNode.payload}"
    currentNode.children.each do |childNode|
      queue.enqueue(childNode)
    end
    #puts queue.count
  end
end

def bfs_search (root,item,queue)
  return if root == nil
  return if item == nil
  queue.enqueue(root)
  while(queue.count >=  1)
    currentNode = queue.dequeue()
    print "#{currentNode.payload}" + " -> "
    if currentNode.payload == item
      puts "Found:  #{item}"
      break
    end
    currentNode.children.each do |childNode|
      queue.enqueue(childNode)
    end
  end
end



#bfs_traversal(trunk,Queue.new)
bfs_search(trunk,6, Queue.new)
