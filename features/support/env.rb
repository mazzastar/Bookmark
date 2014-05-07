require_relative "../../bookmark"

require "Capybara"
require "Capybara/cucumber"
require "rspec"

World do 
	Capybara.app = Bookmark

	# include Capybara::DSL
	# include RSpec::Matchers
end