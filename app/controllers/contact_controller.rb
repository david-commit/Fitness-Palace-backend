class ContactController < ApplicationController

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