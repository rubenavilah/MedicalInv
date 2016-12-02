class Lab < ApplicationRecord
  mount_uploader :avatar, AvatarUploader # Tells rails to use this uploader for this model.

  has_many :product_labs, class_name: "ProductsLabs"

  validates :lab_name, presence: true
end
