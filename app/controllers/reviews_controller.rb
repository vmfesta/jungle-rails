class ReviewsController < ApplicationController
  def create
    @review_user = current_user
    product = Product.find(params[:product_id])
    rating = Rating.new(
        product_id: product.id,
        user_id: @review_user.id,
        description: params[:product][:ratings][:description],
        rating: params[:product][:ratings][:rating]
    )
    rating.save!
    redirect_to '/products/' + params[:product_id].to_s

  end

  def destroy
    rating = Rating.find(params[:id])
    rating.destroy
    redirect_to '/products/' + params[:product_id].to_s
  end
end
