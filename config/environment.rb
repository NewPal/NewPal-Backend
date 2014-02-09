# Load the Rails application.
require File.expand_path('../application', __FILE__)

Rails.logger = Logger.new(STDOUT)
Rails.logger.level = 0
# Initialize the Rails application.
FriendApp::Application.initialize!
