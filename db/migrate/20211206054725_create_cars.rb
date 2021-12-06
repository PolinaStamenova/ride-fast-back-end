class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.decimal :finance_fee
      t.decimal :purchase_fee
      t.decimal :amount_payable
      t.integer :duration
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
