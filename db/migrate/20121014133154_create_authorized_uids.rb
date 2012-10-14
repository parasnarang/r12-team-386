class CreateAuthorizedUids < ActiveRecord::Migration
  def change
    create_table :authorized_uids do |t|
      t.string :uid

      t.timestamps
    end
  end
end
