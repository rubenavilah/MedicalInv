class RemoveProductCaducityFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :product_caducity, :date
    remove_column :products, :product_quantity, :integer
  end
end
