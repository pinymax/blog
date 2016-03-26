class AddParentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :parent_id, :integer
  end
end
