class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, except: %i[destroy]
  def new
    @review = authorize Review.new()
  end

  def create
    @review = authorize Review.new(review_params)
    if @review.save!
      redirect_to root_path
      flash.alert = 'Recenzie creată. Va fi publicată după aprobare!'
    else
      render :new
    end
  end

  def destroy
    @review = authorize Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :approved, :name)
  end
end
