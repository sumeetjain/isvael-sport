class ApplicationController < ActionController::Base
  protect_from_forgery

	# Get locale code from request subdomain (like http://it.application.local:3000)
	# You have to put something like:
	#   127.0.0.1 gr.application.local
	# in your /etc/hosts file to try this out locally
	def extract_locale_from_subdomain
	  parsed_locale = request.subdomains.first
	  I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
	end
end