class ProductsUser < ApplicationRecord
  belongs_to :product, class_name: "Product", foreign_key: "product_id"
  belongs_to :user, class_name: "User", foreign_key: "user_id"

  validates :product_id, :user_id, :product_quantity, :product_caducity, presence: true
end
