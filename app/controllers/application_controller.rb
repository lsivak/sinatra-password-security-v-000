require "./config/environment"
require "./app/models/user"
class ApplicationController < Sinatra::Base

	configure do
		set :views, "app/views"
		enable :sessions
		set :session_secret, "password_security"
	end

	post "/signup" do
    user = User.new(:username => params[:username], :password => params[:password])
		if user.save
			redirect "/login"
	else
			redirect "/failure"
end
end
