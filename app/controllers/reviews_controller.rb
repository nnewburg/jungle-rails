class ReviewsController < ApplicationController

  def create
    newReview ={
      description: review_params[:description],
      rating: review_params[:rating],
      user_id: current_user.id,
      product_id: review_params[:product_id]
    }

      @review = Review.new(newReview)
      @review.save
      redirect_to "/products/#{review_params[:product_id]}"
  end

    def review_params
    params.require(:review).permit(
      :description,
      :rating,
      :product_id,
      :id
    )
    end

    def destroy
    @product = Product.find(review_params[:product_id])
    @review = @product.reviews.find(review_params[:id])
    @review.destroy
    redirect_to "/products/#{review_params[:product_id]}"
  end

end
