class TreeNode
  attr_accessor :info, :left , :right
  def initialize info, left , right
    @info = info
    @left = left
    @right = right
  end
end

class BinaryTree
  def initialize info
    puts "initializing...with info : " + info.to_s
    @trunk = TreeNode.new (info , nil , nil )
  end

  def insert info
    puts "inserting info ..." + info.to_s
    temp = TreeNode.new ( info , nil , nil )

  end
end
