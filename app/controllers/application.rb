# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'e2dbff7de5918a71a0de7c7aa6202cea'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
	layout "main"
  flickr = Flickr.new
  @@user = flickr.users('Action Hank')

	def get_photos(tags)
		photos = @@user.tag(tags)
		@main_photo = photos[rand(photos.length)]
  end

	def get_photos_all(tags)
		photos = @@user.tags_all(tags)
		@main_photo = photos[rand(photos.length)]
	end
end