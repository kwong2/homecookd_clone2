class ChangeColumnInFoodsAndReservations < ActiveRecord::Migration[5.1]
  def change
  	remove_column :foods, :host_id, :string
  	remove_column :reservations, :guest_id, :string 
  	add_column :foods, :user_id, :string
  	add_column :reservations, :user_id, :string
  end
end
