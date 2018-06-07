class Observation < ApplicationRecord
  has_many :admissions_observations
  has_many :observations, through: :admissions_observations
end
