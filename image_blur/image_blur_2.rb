class Image
  def initialize(data)
    @data = data
    @rows = @data.length
    @cols = @data[0].length
  end

  def output_image_map
    puts @data.map{ |row| row.join("") }.join("\n")
  end

  def get_center_points
    center_points = []
    @data.each_with_index { |row,x|
      row.each_with_index { |col,y|
        center_points << [x,y] if col == 1
      }
    }
    return center_points
  end

  def create_circle(r)
    center_points = get_center_points
    center_points.each do |center|
      h = center[0]
      k = center[1]
      @data.each_with_index { |row,x|
        row.each_with_index { |col,y|
          distance = (x - h).abs + (y-k).abs
          if distance <= r
            set_pixel_to_1(x,y)
          end
        }
      }
    end
  end

  def set_pixel_to_1(x,y)
    @data[x][y] = 1
  end

end

image1 = Image.new([
                     [0, 0, 0, 0],
                     [0, 1, 0, 0],
                     [0, 0, 0, 1],
                     [0, 0, 0, 0]
])

#image1.get_center_points
image1.create_circle(1)
image1.output_image_map
puts '#####################################'
image2 = Image.new([
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0],
                     [0, 1, 0, 0],
                     [0, 0, 0, 0],
                     [0, 0, 0, 0]
])
image2.create_circle(2)
image2.output_image_map
