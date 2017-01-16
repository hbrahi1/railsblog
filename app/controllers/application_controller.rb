class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  private

	def extract_locale_from_accept_language_header
		http_accept_language =
		request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
		if ['de', 'en'].include? http_accept_language
			http_accept_language
		else
			'en'
		end
	end

	def set_locale
		I18n.locale = extract_locale_from_accept_language_header ||
		I18n.default_locale
	end
end
