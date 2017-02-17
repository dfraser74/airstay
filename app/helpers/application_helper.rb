module ApplicationHelper
	def initials_of(user)
	  user.fullname.split(' ').collect { |s| s[0] }.join('')
	end
end
