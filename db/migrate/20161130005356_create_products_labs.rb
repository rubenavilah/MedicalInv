class CreateProductsLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :products_labs do |t|
      t.integer :lab_id
      t.integer :product_id

      t.timestamps
    end
  end
end
