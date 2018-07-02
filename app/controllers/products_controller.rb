class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def body
    post = Post.find(params[:id])
    render plain: post.description
  end

  def new
    @product = Product.new
  end
end
