module RottenMovies
  module Search
  	SEARCH_PATH="movies.json"

  	def search(options={})
  	  params = { 
  	  	query:{
  	  		q: options.fetch(:query),
  	  		limit: options.fetch(:limit) { '10'},
  	  		page: options.fetch(:page) { '1' },
  	  		apikey: api_key
  	  	}
  	  }
  	  path = build_search_path
  	  self.class.get(path, params)
  	end

  	private

  	def build_search_path
  	  path = "#{base_url}/#{SEARCH_PATH}"
  	end



  end
end