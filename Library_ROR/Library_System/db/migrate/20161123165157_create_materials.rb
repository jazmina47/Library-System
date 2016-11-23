class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :material_type
      t.string :material_classification_id
      t.string :material_title
      t.integer :quantity_material

      t.timestamps
    end
  end
end
