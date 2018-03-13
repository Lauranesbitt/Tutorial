class ReviewsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
# Access all reviews for that movie
@reviews = @patient.reviews
  end


    def show
@patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews/2
# Find an review in movies 1 that has id=2
@review = @patient.reviews.find(params[:id])
end

  def new
    @patient = Patient.find(params[:patient_id])
# Associate an review object with movie 1
@review = @patient.reviews.build
  end

  def edit
    @patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews/2/edit
# Get review id=2 for movie 1
@review = @patient.reviews.find(params[:id])
  end
  def update
@patient = Patient.find(params[:patient_id])
@review = Review.find(params[:id])
if
@review.update_attributes(params.require(:review).permit(:details))
# Save the review successfully
redirect_to patient_review_url(@patient, @review)
else
render :action => "edit"
end
end
end
