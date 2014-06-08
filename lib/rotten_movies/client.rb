require "httparty"
require "rotten_movies/search"
module RottenMovies

  class Client
  	include HTTParty
  	include RottenMovies::Search
  	BASE_URL = "http://api.rottentomatoes.com/api/public/"
  	attr_reader :api_key, :base_url

	def initialize(api_key, version="v1.0")
	  @api_key = api_key
	  @base_url = BASE_URL + version
	end


  end

end