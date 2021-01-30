require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/' do
    "This is the Homepage."
  end
  
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @user = params[:name]
    "Goodbye, #{@user}."
  end

  get '/multiply/:num1/:num2' do
    @first_number = params[:num1]
    @second_number = params[:num2]
    
  end

end