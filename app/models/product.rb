class Product < ApplicationRecord
  has_many :labs, class_name: "ProductLab"
  has_many :product_user, class_name: "ProductsUser"

  validates :product_name, :product_price, :product_image, presence: true
end
