class ApplicationController < Sinatra::Base
    
    set :default_content_type, "application/json"

    # allow access-control-allow-origin header on all requests
    before do
        response.headers["Access-Control-Allow-Origin"] = "*"
    end

    # enable CORS preflight requests
    options "*" do
        response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"

        # response.headers("Access-Control-Allow-Origin", "*");
        # response.headers("Access-Control-Allow-Credentials", "true");
        # response.headers("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
        # response.headers("Access-Control-Allow-Headers", "Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");
    end

    get '/' do # this is the root route of the application (the homepage) but you can have as many routes as you want
        {Today: "we finish coding code 😃"}.to_json
    end
    
end






















# =====================================================

# post '/jobs/add/:title/:organization/:location/recruiter_id' do 

#     title = params[:title],
#     organization = params[:organization],
#     location = params[:location]
#     recruiter_id = params[:recruiter_id]

#     jobs = Job.create(
#         title: title, organization: organization, location: location, recruiter_id: recruiter_id
#     )
#     "Thanks jobs.to_json"
#   end