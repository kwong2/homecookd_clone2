class RemoveRoleColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :guest?, :boolean
  	remove_column :users, :host?, :boolean
  end
end
