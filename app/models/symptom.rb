class Symptom < ApplicationRecord
  has_many :admissions_symptoms
  has_many :symptoms, through: :admissions_symptoms
end
