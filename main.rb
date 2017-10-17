require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
begin
	puts new_patient.first_name
	puts new_patient.last_name
rescue ContactError => e
	puts patient_contact_info
	puts "Error Exception: #{e.message}"
rescue StandardError => e
	puts new_patient.patient_status(:coma)
	puts "Error Exception: #{e.message}"
rescue ArgError => e
	puts new_patient.patient_currently_admitted?
	puts "Error Exception: #{e.message}"
rescue DivEroor => e
	puts new_patient.patient_new_total(125)
	puts "Error Exception: #{e.message}"
rescue ArgError => e
	new_patient.add_med_to_list("lipitor", 123.12)
	puts "Error Exception: #{e.message}"
end