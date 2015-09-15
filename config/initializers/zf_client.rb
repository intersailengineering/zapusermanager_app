Rails.application.config.to_prepare do
	Intersail::ZfClient.configure do |config|
		base_uri = 'http://localhost/RestService'
		config.process_base_uri = base_uri
		config.process_def_base_uri = base_uri
		config.activity_def_base_uri = base_uri
		config.user_base_uri = base_uri
		config.resource_base_uri = base_uri
		config.unit_base_uri = base_uri
		config.role_base_uri = base_uri
		config.urr_base_uri = base_uri
		config.acl_base_uri = base_uri
		config.hash_base_uri = base_uri
	end
end