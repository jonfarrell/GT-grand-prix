class Grandprix < ApplicationRecord
  # belongs_to :user
  has_many :circuits, dependent: :destroy
  # has_one_attached :image
end
