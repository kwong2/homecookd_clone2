class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :price
      t.text :description
      t.string :picture
      t.string :host_id

      t.timestamps
    end
  end
end
