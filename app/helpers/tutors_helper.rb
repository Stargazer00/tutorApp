module TutorsHelper
	def error_check(error, &block)
		if error.any?
			if error.messages[:name] 
				true
			else
				false
			end
		else
			false
		end
	end
end
