class Patient < ActiveRecord::Base

	def fullname
		prenom+" "+nom
	end
end
