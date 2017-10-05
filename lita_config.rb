require 'lita_dotenv'

Lita.configure do |config|
	config.robot.name = "eva"
	config.robot.mention_name = "eva"
	config.robot.alias = "/eva"
	config.redis = {url: "redis://redis:6379"}
	config.http.port = ENV['PORT'] || 8080
end
