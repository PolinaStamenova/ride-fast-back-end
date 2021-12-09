class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
