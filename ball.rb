class Ball
	SIZE = 16

	attr_reader :x, :y, :angle, :speed

	def initialize
		@x = Pong::WIDTH/2
		@y = Pong::HEIGHT/2

		@angle = rand(120) + 30
		@angle *= -1 if rand > .5
		@speed = 6
	end

