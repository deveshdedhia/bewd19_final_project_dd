class GreetingsController < ApplicationController
	def index
		render text: "Hello World"
	end
end