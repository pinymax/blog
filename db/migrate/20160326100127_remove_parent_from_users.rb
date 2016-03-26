class RemoveParentFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :parent_id
  end
end
