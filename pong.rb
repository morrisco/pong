require 'bundler/setup'
require 'hasu'

# Hasu.load 'ball.rb'
# Hasu.load 'paddle.rb'

class Pong < Hasu::Window

	WIDTH = 768
	HEIGHT = 576

	def initialize
		super(WIDTH, HEIGHT, false)		
	end

	def button_down(button)
		case button
		when Gosu::KbEscape
			close
		end
	end

	def reset
		@ball = Ball.new

		@left_score 	= 0
		@right_score 	= 0

		@font = Gosu::Font.new(self, "Arial", 30)

		@left_paddle 	= Paddle.new(:left)
		@right_paddle = Paddle.new(:right)
	end

	def draw
		@ball.draw(self)

		@front.draw(@left_score, 30, 30, 0)
		@front.draw(@right_score, WIDTH-50, 30, 0)

		@left_paddle.draw(self)
		@right_paddle.draw(self)
	end

	
end

Pong.run