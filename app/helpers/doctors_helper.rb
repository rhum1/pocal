module DoctorsHelper

	def has_appointment_kind?(appointment_kind)
		@user.appointment_kinds.include?(appointment_kind)
	end

end
