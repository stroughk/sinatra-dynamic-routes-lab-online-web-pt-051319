require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
    final_string += "#{params[:phrase]}\n"
  end


end
