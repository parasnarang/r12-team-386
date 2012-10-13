class ItemsController < ApplicationController
  before_filter :signed_in_user

  def new 
    #debugger
    
    if params[:u]
      @item = current_user.items.new
      @item.product_url = params[:u]
      @item.name = params[:t]
      @item.price = params[:s]
      @item.image_url = params[:z]
    else
      redirect_to root_url, notice: "Please use the bookmarklet"
    end
  end
end
