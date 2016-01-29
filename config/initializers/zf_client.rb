Rails.application.config.to_prepare do
	Intersail::ZfClient.configure do |config|
		config.base_uri = 'http://localhost/RestService'
	end
end