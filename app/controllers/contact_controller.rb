class ContactController < ApplicationController

 get "/contacts" do
  cont = Contact.all
  cont.to_json
 end

 post "/contact" do
  cont = Contact.create(
   name: params[:name],
   email: params[:email],
   phone: params[:phone],
   message: params[:message]
  )
  cont.to_json
 end

end