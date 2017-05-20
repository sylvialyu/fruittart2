class ProductsController < ApplicationController

  def index
    @products = Product.all.order("position ASC")
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to :back
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back
  end

  def discount_price
    @product = Product.find(params[:id])
    if @product.discount.present?
      @product.price = @product.price * (@product.discount / 100 )
    end
  end

end
