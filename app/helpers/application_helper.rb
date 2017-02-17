module ApplicationHelper
	def initials_of
	  user.fullname.split(' ').collect { |s| s[0] }.join(' ')
	end
	
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase 
		if user.image
			user.image
		else
			"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
		end
	end
end
