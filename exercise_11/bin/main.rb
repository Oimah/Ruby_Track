require_relative "../lib/generate_pascal_triangle.rb"

class Main

def get_row_count_and_generate_triangle
	puts "Enter the power"
     GeneratePascalTriangle.new.generate_pascal_triangle_array(gets.chomp.to_i)do |n|
	end
end
end

Main.new.get_row_count_and_generate_triangle
