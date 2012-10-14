class BoardsController < ApplicationController
  def show
    @board = Board.find(params[:id])
  end

  def destroy
  end
end
