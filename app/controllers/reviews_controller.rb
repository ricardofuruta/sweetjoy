class ReviewsController < ApplicationController
  def create
    @baker = Baker.find(params[:baker_id])
    @review = @baker.reviews.build(review_params)
    if @review.save
      redirect_to baker_path(@baker)
    else
      render 'bakers/show'
    end
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rate)
  end
end
