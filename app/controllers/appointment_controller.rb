class AppointmentController < ApplicationController

get "/appointments" do
 app = Appointment.all
 app.to_json
end

post "/appointment" do
   app = Appointment.create(
   user_id: params[:user_id],
   workout: params[:workout],
   date: params[:date],
   duration: params[:duration]
   trainer_id: params[:trainer_id]
  )
  app.to_json
end

delete '/appointment/:id' do
  app = Appointment.find(params[:id])
  app.destroy
  app.to_json
end

end