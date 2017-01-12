class Window
	def initialize(w = 0,h = 0)
		@width = w
		@heigth = h
	end

	def to_s
		"Width: #{@width} - Heigth: #{@heigth}"
	end

	attr_accessor :width, :heigth
end

w = Window.new 25,50
puts w

