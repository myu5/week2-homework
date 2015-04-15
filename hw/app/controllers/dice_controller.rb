class DiceController < ApplicationController

	def roll 
		@number1=[1,2,3,4,5,6].sample
		@number2=[1,2,3,4,5,6].sample
		@sum=@number1+@number2
		@goal=params["point"]

		if @goal
			if @sum==@goal.to_i
				@description ="You Win!!! :)"
				@button_text = "Start Over"
			elsif @sum ==7
				@description = "You Lose!! :("
				@button_text = "Start Over"
			else
				@description = "Your goal is #{@goal} but you rolled #{@sum}. You can roll again!"
				@button_text = "Roll Again"
			end
		else
			case @sum
			when 7,11
				@description = "You Win!!! :)"
				@button_text = "Start Over"
			when 2,3,4
				@description = "You Lose!!! :("
				@button_text = "Start Over"
			else
				@goal = @sum
				@goal_description = "Your goal is now #{@sum}."
				@description = "Now try to get #{@sum} again before you roll a 7."
				@button_text = "Roll Again"
			end
		end

	end
end
