class Lab < ApplicationRecord
  has_many :product_labs, class_name: "ProductLabs"

  validates :lab_name, presence: true
end
