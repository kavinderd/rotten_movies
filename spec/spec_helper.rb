require './lib/rotten_movies'
require 'vcr'


VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
end

RSpec.configure do |config|



   
end