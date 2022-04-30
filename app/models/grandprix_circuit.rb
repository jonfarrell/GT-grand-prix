class GrandprixCircuit < ApplicationRecord
  belongs_to :grandprix
  belongs_to :circuit
  has_one :grandprix_circuit

  validates :grandprix_id, uniqueness: { scope: :circuit_id }
end
