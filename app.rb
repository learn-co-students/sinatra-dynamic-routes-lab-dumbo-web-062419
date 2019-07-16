require_relative 'config/environment'

class App < Sinatra::Base
  
  #Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
  get '/reversename/:name' do 
    @reversename = params[:name]
       "#{@reversename.reverse}"
       #binding.pry
  end


  get '/square/:number' do 
    @square = params[:number].to_i
    "#{@square ** 2}"
  end


  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase * @number}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."


  end

  
  get '/:operation/:number1/:number2' do 
      @operation = params[:operation]
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i

      if @operation == "add"
        "#{@number1 + @number2}"
      elsif @operation == "subtract"
        "#{@number1 - @number2}"
      elsif @operation == "multiply"
        "#{@number1 * @number2}"
      elsif @operation == "divide"
        "#{@number1 / @number2}"

      end
      

  end





end