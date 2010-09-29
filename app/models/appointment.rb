class Appointment < ActiveRecord::Base
	has_one :appointment_kind
	has_one :patient
	has_one :doctor
end
