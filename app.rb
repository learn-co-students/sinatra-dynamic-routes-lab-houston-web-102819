require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    backwards = params[:name].reverse
    return backwards
  end

  get "/square/:number" do
    square = params[:number].to_i**2
    return square.to_s
  end

  get "/say/:number/:phrase" do
    mega_phrase = ""
    i = 0
    while i < params[:number].to_i do
      mega_phrase += params[:phrase]
      i+=1
    end
    return mega_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    return string
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      answer = num1 + num2
    elsif params[:operation] == "subtract"
      answer = num1 - num2
    elsif params[:operation] == "multiply"
      answer = num1 * num2
    elsif params[:operation] == "divide"
      answer = num1/num2
    end
    return answer.to_s
  end


end