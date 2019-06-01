class Image
    
    def initialize (img_array)
        @image = Array.new(img_array)
    end
    
    def output_image
        @image.each { |i| puts i.join('')}
    end

    def m_block(block, cRow, cCol, rowLength, colLength)
        row = block
        col = 0

        while (row >= 0) do

            if (cRow - row >= 0)
                if (cCol - col >= 0)
                    @image[cRow-row][cCol-col] = 1
                end
                if (cCol + col <= colLength)
                    @image[cRow-row][cCol+col] = 1
                end
            end

            if (cRow + row <= rowLength)
                if (cCol - col >= 0)
                    @image[cRow+row][cCol-col] = 1
                end
                if (cCol + col <= colLength)
                    @image[cRow+row][cCol+col] = 1
                end
            end
            row = row - 1
            col = col + 1
        end

        if (block > 1)
            m_block(block-1, cRow, cCol, rowLength, colLength)
        end
    end
    
    def blur_image(blk)
        temp_image = []
        @image.each {|sub| temp_image << sub.dup}
        #temp_image.each { |i| puts i.join('')}
        
        temp_image.each_index do |row|
            #puts "row: #{row}"
            #temp_image.each { |i| puts i.join('')}
            
            subarray = temp_image[row]
            subarray.each_index do |col|
            
                if (temp_image[row][col] == 1)
                    m_block(blk, row, col, temp_image.length-1, subarray.length-1)
                end
            end
        end
    end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
])

image.output_image

image.blur_image(3)
puts "----"
image.output_image