class ProductsLab < ApplicationRecord
  belongs_to :lab, class_name: "Lab", foreign_key: "lab_id"
  belongs_to :product, class_name: "Product", foreign_key: "product_id"

  validates :product_id, :lab_id, presence: true
end
