require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    rev = params[:name].reverse
    "#{rev}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    num = num*num
    "#{num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phr = params[:phrase]
      "#{phr * num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word = params[:word1]
    word2 = params[:word2]
    word3= params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    case_thing = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case case_thing
    when "add"
      "#{num1 + num2}"
    when "multiply"
      "#{num1 * num2}"
    when "subtract"
      "#{num1 - num2}"
    when "divide"
      "#{num1 / num2}"
    end
  end

end
