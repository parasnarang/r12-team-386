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

      @boards = current_user.boards
    else
      redirect_to root_url, notice: "Please use the bookmarklet"
    end
  end

  def create 
    debugger
    if params
      if params[:item][:new_board] != ""
        @board = current_user.boards.new
        @board.name = params[:item][:new_board]
        @board.save
      else
        @board = Board.find(params[:item][:board_id])
        unless @board.user == current_user
          redirect_to root_path, error: "That board is none of your business."
        end
      end
      @item = current_user.items.new
      @item.name = params[:item][:name]
      @item.product_url = params[:item][:product_url]
      @item.image_url = params[:item][:image_url]
      @item.price = params[:item][:price]
      @item.board = @board
      @item.save
      redirect_to board_path(id: @board.id)
    end
  end

  def vote
    @value = params[:type] == "up" ? 1 : -1
    @item = Item.find(params[:id])
    @item.add_or_update_evaluation(:votes, @value, current_user)
    respond_to do |format|
      format.html { redirect_to :back, notice: "Thanks for voting!" }
      format.js 
    end
  end
end
