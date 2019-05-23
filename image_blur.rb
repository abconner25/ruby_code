class Image
    
    def initialize (img_array)
        @image = Array.new(img_array)
    end
    
    def output_image
        @image.each { |i| puts i.join('')}
    end
    
    def blur_image
        temp_image = []
        @image.each {|sub| temp_image << sub.dup}
        #temp_image.each { |i| puts i.join('')}
        
        temp_image.each_index do |row|
            #puts "row: #{row}"
            #temp_image.each { |i| puts i.join('')}
            
            subarray = temp_image[row]
            subarray.each_index do |col|
            
                if (temp_image[row][col] == 1)
                
                    if (row > 0)
                        @image[row-1][col] = 1
                    end
                    if (row < temp_image.length-1)
                        @image[row+1][col] = 1
                    end
                    if (col > 0)
                        @image[row][col-1] = 1
                    end
                    if (col < subarray.length-1)
                        @image[row][col+1] = 1
                    end
                end
            end
        end
    end
end

image = Image.new([
  [1, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 1]
])

image.output_image

image.blur_image
puts "----"
image.output_image