class AddBoardIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :board_id, :integer
  end
end
