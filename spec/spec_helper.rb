require './lib/rotten_movies'
require 'vcr'
require 'yaml'
require 'webmock'

TEST_API_KEY = YAML::load(File.open('./spec/config.yml'))['api_key']

VCR.configure do |c|
  c.cassette_library_dir = File.join("spec", "fixtures", "vcr_cassettes")
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
end

RSpec.configure do |config|



   
end