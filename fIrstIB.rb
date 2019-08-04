class Row
  attr_accessor :pixels

  def initialize (pixels)
    @row = []
    @row.push(pixels) 
  end 

  def output_row
    puts @row.join
  end
end

class Image 
  def initialize
    @rows = []
    
    @rows << Row.new([0, 0, 0, 0])
    @rows << Row.new([0, 1, 0, 0])
    @rows << Row.new([0, 0, 0, 1])
    @rows << Row.new([0, 0, 0, 0])
  end 

  def output_image
    @rows.each do |row|
      row.output_row 
    end 
  end
end

image = Image.new
image.output_image
