class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :time
      t.string :location
      t.string :date
      t.string :guest_id

      t.timestamps
    end
  end
end
