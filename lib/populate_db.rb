#! /usr/bin/env ruby

require File.expand_path('../../config/environment', __FILE__)

require 'pry'

Facility.create!(name: 'Blue Alps Ski Camp')

if Gender.count < 1
  Gender.create!(sex: 'male')
  Gender.create!(sex: 'female')
end

Allergy.create!(description: 'fish')
Allergy.create!(description: 'asprin')
Allergy.create!(description: 'soda')

Diagnosis.create!(code: '1224', description: 'fractured nose')
Diagnosis.create!(code: '2773', description: 'stomach pain')

DiagnosticProcedure.create!(moment: DateTime.now, description: 'garden hose to clean wound')
DiagnosticProcedure.create!(moment: DateTime.now, description: 'tequila straight up')

Observation.create!(description: 'As seen on youtube', moment: DateTime.now)
Observation.create!(description: 'During the pub crawl', moment: DateTime.now)

Symptom.create!(description: 'tired')
Symptom.create!(description: 'tooth ache')

Treatment.create!(description: 'walk a straight line', necessity: 'seriously')
Treatment.create!(description: 'wash with vodka', necessity: 'as desired')

MedicationOrder.create!(name: 'Metallica', dosage: 'justice for all')
MedicationOrder.create!(name: 'Bob Marley', dosage: 'no redemption')

Admission.create!(moment: DateTime.now,
                  diagnoses: [Diagnosis.first],
                  symptoms: [Symptom.last],
                  observations: [Observation.first])

Patient.create!(first_name: "Sponge",
                middle_name: "Bob",
                last_name: "Square Pants",
                dob: DateTime.new(1977, 5, 11),
                gender: Gender.first,
                mr: '94668712',
                admission: Admission.first,
                allergies: [Allergy.first],
                chronic_conditions: [Diagnosis.last],
                medication_orders: [MedicationOrder.last],
                diagnostic_procedures: [DiagnosticProcedure.last],
                diagnoses: [Diagnosis.first],
                treatments: [Treatment.first])


Patient.create!(first_name: "Doc",
                last_name: "Holiday",
                dob: DateTime.new(1937, 7, 11),
                gender: Gender.first,
                mr: '800411',
                admission: Admission.first,
                allergies: [Allergy.last],
                chronic_conditions: [Diagnosis.first],
                medication_orders: [MedicationOrder.first],
                diagnostic_procedures: [DiagnosticProcedure.first],
                diagnoses: [Diagnosis.last],
                treatments: [Treatment.last])

#PatientsAllergy.create!(allergy: Allergy.first, patient: Patient.first)
#PatientsAllergy.create!(allergy: Allergy.last, patient: Patient.first)

#PatientsDiagnosis.create(diagnosis: Diagnosis.first, patient: Patient.first)
#PatientsDiagnosis.create(diagnosis: Diagnosis.last, patient: Patient.first)
#PatientsDiagnosis.create(diagnosis: Diagnosis.first, patient: Patient.last)

#PatientsDiagnosticProc.create(diagnostic_procedure: DiagnosticProcedure.first, patient: Patient.first)
#PatientsDiagnosticProc.create(diagnostic_procedure: DiagnosticProcedure.last, patient: Patient.first)
#PatientsDiagnosticProc.create(diagnostic_procedure: DiagnosticProcedure.last, patient: Patient.last)

#PatientsTreatment.create!(treatment: Treatment.first, patient: Patient.first)
#PatientsTreatment.create!(treatment: Treatment.last, patient: Patient.first)
#PatientsTreatment.create!(treatment: Treatment.last, patient: Patient.last)

#PatientsMedicationOrder.create!(medication_order: MedicationOrder.first, patient: Patient.first)
#PatientsMedicationOrder.create!(medication_order: MedicationOrder.last, patient: Patient.last)


