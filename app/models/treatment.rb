class Treatment < ApplicationRecord
  has_many :patients_treatments
  has_many :treatments, through: :patients_treatments
end
