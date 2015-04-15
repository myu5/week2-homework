class GreetController < ApplicationController
	def say_word
		@word = params["salutation"]

		if !@word
			@word = "Hello"
		end
	end
end