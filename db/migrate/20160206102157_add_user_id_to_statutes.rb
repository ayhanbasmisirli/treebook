class AddUserIdToStatutes < ActiveRecord::Migration
  def change
    add_column :statuses,:user_id,:integer
    add_index :statuses,:user_id
    remove_column :statuses,:name
    #adding colum statuses user_id and index and remove name column from statuses
  end
end
