class ReviewsController < ApplicationController
  def create
    @baker = Baker.find(params[:baker_id])
    @user = current_user
    @review = @baker.reviews.build(review_params)
    @review.user_id = @user

    if @review.save
      # adding the average baker rate
      if @baker.averagerate.blank?
        @baker.averagerate = @review.rate
        @baker.save
      else
        sum = 0
        @baker.reviews.each do |review|
          sum += review.rate
          p sum
        end
        @baker.averagerate = (sum / @baker.reviews.size)
        @baker.save
      end
      redirect_to baker_path(@baker)
    else
      render 'reviews/_form'
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
