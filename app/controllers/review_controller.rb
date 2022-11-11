class ReviewController < ApplicationController

 get "/reviews" do
  review = Review.all
  review.to_json
 end

 post "/review" do
   rev = Review.create(
   user_id: params[:user_id],
   review: params[:review]
  )
  rev.to_json
end

 delete '/reviews/:id' do
  review = Review.find(params[:id])
  review.destroy
  review.to_json
  end

end