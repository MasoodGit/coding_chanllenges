class Node
  attr_accessor :payload, :left, :right

  def initialize(payload,left,right)
    @payload = payload
    @left = left
    @right = right
  end
end

class BinaryTree
  attr_accessor :root

  def intialize
    @root = nil
  end

  def insert_array arr
    arr.each do |info|
      self.insert(info)
    end
  end

  def insert data
    temp = Node.new(data,nil,nil)
    if @root == nil
      @root = temp
      return
    end
    prev = nil
    curr = @root
    #puts @root.inspect
    while(curr != nil)
      prev = curr
      curr = data < curr.payload ? curr.left : curr.right
    end
    if data < prev.payload
      prev.left = temp
    else
      prev.right = temp
    end
  end

  def display(node)
    if node != nil
      display(node.left)
      print "#{node.payload}->"
      display(node.right)
    end
  end

  def search(node,item)
    return if node == nil
    return if item == nil
    if item == node.payload
      puts "\nFound : #{item}"
    end
    search(node.left,item)
    search(node.right,item)
  end
end

binaryTree = BinaryTree.new

binaryTree.insert_array([43,8,1,23,45,67])

binaryTree.display(binaryTree.root)

binaryTree.search(binaryTree.root,45)
