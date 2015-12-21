#class Image

class Image
  @@rows = 0
  def initialize(data)
    @data = data
    @rows = @data.length
    @cols = @data[0].length
  end

  def output_image_map
    puts @data.map{ |row| row.join("") }.join("\n")
  end

  def blur_image_helper(x, y)
    if x - 1 >= 0
      @data[x-1][y] = 1
    end
    if x + 1 < @rows
      @data[x+1][y] = 1
    end
    if y - 1 >= 0
      @data[x][y-1] = 1
    end
    if y + 1 < @cols
      @data[x][y+1] = 1
    end
  end

  def image_blur

    pixels_with_one=[]
    rows = @data.length
    cols = @data[0].length

    @data.each_with_index { |row,x|
      row.each_with_index { |col,y|
        if col == 1
          self.blur_image_helper(x, y) # do we need to call it using "self"
        end
      }
    }
    self.output_image_map
  end
end

#end of class

image1 = Image.new([
                     [0, 0, 0, 0],
                     [0, 1, 0, 0],
                     [0, 0, 0, 1],
                     [0, 0, 0, 0]
])

image1.image_blur
puts '############################# \n'

image2 = Image.new([
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 1, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0]
])

image2.image_blur
puts '############################# \n'

image3 = Image.new([
                     [0, 0, 0, 0],
                     [0, 0, 1, 0],
                     [0, 0, 0, 0],
                     [0, 1, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0]
])

image3.image_blur
puts '############################# \n'

image4 = Image.new([
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [1, 0, 0, 0],
                     [0, 0, 0, 0]
])

image4.image_blur

puts '############################# \n'

image5 = Image.new([
                     [0, 1, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 1, 0, 0]
])
image5.image_blur
