class RemoveVotesFromItem < ActiveRecord::Migration
  def up
    remove_column :items, :votes
  end

  def down
    add_column :items, :votes
  end
end
