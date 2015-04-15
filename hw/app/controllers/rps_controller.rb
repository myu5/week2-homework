class RpsController < ApplicationController
	def weapon_list
		return ["rock","paper","scissors"]
	end

	def submitted
		#declare variables
		@user_weapon = params["weapon"]
		@input_valid = true
		@description = ""

		#check if valid choice
		if !@user_weapon || !weapon_list.include?(@user_weapon)
			@input_valid=false
			@description = "No Weapon Was Chosen!"
		else
			@computer_weapon=weapon_list.sample

			if @user_weapon == @computer_weapon
				@description = "It's a tie!"
			elsif (@user_weapon=="scissors"&&@computer_weapon=="rock")||(@user_weapon=="rock"&&@computer_weapon=="paper")||(@user_weapon=="paper"&&@computer_weapon=="scissors")
				@description="Computer Win!"
			else
				@description="You Win!"
			end
		end
	end
end
