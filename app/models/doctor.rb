class Doctor < ActiveRecord::Base
	has_many :appointment_kinds
	
	def fullname
		first_name+" "+last_name
	end
end
