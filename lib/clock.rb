require 'clockwork'
require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'rake'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  # every(1.minute, "scrape_matches") {
  #   rake = Rake::Application.new
  #   Rake.application = rake
  #   Rake::Task.define_task(:environment)
  #   load "#{Rails.root}/lib/tasks/match_scraper.rake"
  #   rake['fifa:get_all_matches'].invoke
  #   rake['fifa:get_events'].invoke
  # }

  every(30.seconds, 'Get Matches') { `rake fifa:get_all_matches` }

  every(60.seconds, 'Get Events') { `rake fifa:get_events` }
end
