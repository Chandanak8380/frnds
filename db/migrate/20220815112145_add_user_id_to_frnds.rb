class AddUserIdToFrnds < ActiveRecord::Migration[7.0]
  def change
    add_column :frnds, :user_id, :integer
    add_index :frnds, :user_id
  end
end
