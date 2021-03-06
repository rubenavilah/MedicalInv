class Product < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader
  has_many :labs, class_name: "ProductsLab"
  has_many :product_user, class_name: "ProductsUser"

  validates :product_name, :product_price, :product_image, presence: true
end
