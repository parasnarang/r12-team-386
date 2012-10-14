class BoardsController < ApplicationController
  before_filter :signed_in_user
  
  def show
    @board = Board.find(params[:id])
    @items = @board.items
  end

  def destroy
  end
end
