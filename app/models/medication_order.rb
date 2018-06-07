class MedicationOrder < ApplicationRecord
  has_many :patients_medication_orders
  has_many :medication_orders, through: :patients_medication_orders
end
