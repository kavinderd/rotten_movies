require './lib/rotten_movies'
require 'vcr'
require 'yaml'

TEST_API_KEY = YAML::load(File.open('./spec/config.yml'))['api_key']

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
end

RSpec.configure do |config|



   
end