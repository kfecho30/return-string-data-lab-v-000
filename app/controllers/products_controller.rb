class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def body
    product = Product.find(params[:id])
    render plain: product.description
  end

  def new
    @product = Product.new
  end
end
