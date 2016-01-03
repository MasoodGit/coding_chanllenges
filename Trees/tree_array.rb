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


def display root
  return if root == nil
  print "#{root.payload} -> "
  puts ""
  if root.children.length == 2
    display( root.children[0] )
    display( root.children[1] )
  else
    display ( root.children[0] )
  end
end

def depth_first_search(root , item)
  if root == nil
    return
  elsif root.payload == item
    puts "Found #{item} !!!"
    return
  end
  puts root.payload.to_s + ":" + root.children.length.to_s
  if root.children.length == 2
    depth_first_search( root.children[0],item )
    depth_first_search( root.children[1],item )
  else
    depth_first_search( root.children[0],item )
  end
end


#display(trunk)
search_for = 11
depth_first_search(trunk,search_for)
# if search_result != nil
#   puts "#{search_result.payload} is present in tree"
# else
#   puts "#{search_for} not found in tree"
# end
