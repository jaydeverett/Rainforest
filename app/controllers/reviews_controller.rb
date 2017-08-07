class ReviewsController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @review = Review.all
    render product_reviews_path
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update

    @review = Review.find(params[:id])
     if @review.update(review_params)
       flash[:notice] = "Review successfully updated"
       redirect_to product_path
      else
       redirect_back_or_to @product
     end
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.comment = params[:review][:comment]
    @review.name = params[:review][:name]

    if @review.save
      flash[:notice] = "Review successfully created"
      redirect_to @product

    else
      flash[:notice] = "Something went wrong"
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @product
  end

  def review_params
    params.require(:review).permit(:name, :comment)
  end

end
