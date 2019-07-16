require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  	name = params[:name]
  	@render = name.reverse
  	erb :render
  end

  get '/square/:number' do
  	number = params[:number].to_i
  	@render = number * number
  	erb :render
  end

  get '/say/:number/:phrase' do
		phrase = params[:phrase]
		number = params[:number].to_i

		@render = phrase * number
		erb :render
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	words = ""
  	params.each do |key, word|
  		words += "#{word} "
  	end
	  	words[words.length - 1] = "."
  @render = words
  erb :render
	end

	get '/:operation/:number1/:number2' do
		op = params[:operation]
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i

		if op == "add"
			@render = num1 + num2
		elsif op == "subtract"
			@render = num1 - num2
		elsif op == "multiply"
			@render = num1 * num2
		elsif op == "divide"
			@render = num1 / num2
		else
			@render = "couldn't find that ditty"
		end
		erb :render
	end

end