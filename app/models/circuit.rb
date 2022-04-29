class Circuit < ApplicationRecord
  has_many :grandprix_circuits, dependent: :destroy
  attribute :grandprix_id
  # has_one_attached :image
end
