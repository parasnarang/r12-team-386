class CreateAuthorizedUidsBoardsTable < ActiveRecord::Migration
  def up
    create_table :authorized_uids_boards, :id => false do |t|
      t.references :board
      t.references :authorized_uid
    end
    add_index :authorized_uids_boards, [:board_id, :authorized_uid_id]
    add_index :authorized_uids_boards, [:authorized_uid_id, :board_id] 
  end

  def down
    drop_table :boards_authorized_users
  end
end
