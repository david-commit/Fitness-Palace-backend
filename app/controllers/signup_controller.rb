class SignUpController < ApplicationController

 post "/users" do 
  user = User.create(
   first_name: params[:first_name],
   last_name: params[:last_name],
   email: params[:email],
   password: params[:password],
   confirm_password: params[:confirm_password],
   trainer_id: params[:trainer_id]
  )
  user.to_json
 end

 get "/users" do
  user = User.all
  user.to_json
 end

end
