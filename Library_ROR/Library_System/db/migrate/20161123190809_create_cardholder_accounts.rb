class CreateCardholderAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :cardholder_accounts do |t|
      t.string :firstname
      t.string :lastname
      t.integer :cardholder_id

      t.timestamps
    end
  end
end
