class CreateCheckouts < ActiveRecord::Migration[5.0]
  def change
    create_table :checkouts do |t|
      t.datetime :date
      t.date :due_date
      t.integer :checkout_id
      t.integer :cardholder_id
      t.integer :staff_member_id

      t.timestamps
    end
  end
end
