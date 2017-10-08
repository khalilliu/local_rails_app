module ApplicationHelper
	def gravatar_for(user, options={size:80})
		
		size = options[:size]
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)		
		gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		
		example = "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"
		image_tag(gravatar_url, alt:user.username, class:'img-circle')
	end
end
