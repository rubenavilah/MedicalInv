class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :product_name
      t.integer :product_price
      t.string :product_image
      t.date :product_caducity
      t.integer :product_quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
