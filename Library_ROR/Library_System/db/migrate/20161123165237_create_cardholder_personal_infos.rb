class CreateCardholderPersonalInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :cardholder_personal_infos do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :phone_num
      t.integer :home_num
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :cardholder_id

      t.timestamps
    end
  end
end
