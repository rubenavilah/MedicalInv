class CreateProductsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :products_users do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :product_quantity
      t.datetime :product_caducity

      t.timestamps
    end
  end
end
