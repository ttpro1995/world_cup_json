Airbrake.configure do |c|
  # c.host = 'http://errbit.softwareforgood.com'
  # c.project_id = '5b257b662bb9e40007000003'
  # c.project_key = ENV['AIRBRAKE_KEY']
  # c.root_directory = Rails.root
  # c.logger = Rails.logger
  # c.environment = Rails.env
  # c.ignore_environments = %w[test development staging]
  # c.blacklist_keys = [/password/i, /authorization/i]
  c.project_id = 188559
  c.project_key = '7ce8e0bf38beb8d38a85ca5d68f41230'
end

Airbrake.add_filter(Airbrake::Rack::RequestBodyFilter.new)
