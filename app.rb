require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code her
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    @phrase = params[:phrase]

    "#{@phrase*@number}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
     @word2 = params[:word2] 
     @word3 = params[:word3] 
     @word4 = params[:word4] 
     @word5 = params[:word5]

     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2'

  @operation = params[:operation]
  @number1 = params[:number1].to_i 
  @number2 = params[:number2].to_i

  if @operation == "add"
   @message = "#{@number1 + @number2}"
  elsif @operation == "subtract"
    @message =  "#{@number1 - @number2}"
  elsif @operation == "multiply"
    @message = "#{@number1 * @number2}"
  else @operation == "divide"
    @message = "#{@number1 / @number2}"
  end 

  "#{@message}"


  end


  

end