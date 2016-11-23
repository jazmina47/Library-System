class CreateFines < ActiveRecord::Migration[5.0]
  def change
    create_table :fines do |t|
      t.date :date_of_fine
      t.decimal :amount
      t.integer :cardholder_id
      t.integer :fine_id

      t.timestamps
    end
  end
end
