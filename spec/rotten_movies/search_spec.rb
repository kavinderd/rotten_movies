require 'spec_helper'

describe RottenMovies::Search do

  before(:all) do
  	class RottenMovies::Client
  		include RottenMovies::Search
  	end
  end
  let(:client) { RottenMovies::Client.new(TEST_API_KEY)}

  it "should include its methods when included" do
    client.should respond_to(:search)
  end

  it "should return a json response with only a query parameter passed" do
  	VCR.use_cassette('search_with_query') do
      response = client.search(query: 'lord of the rings') 	
      response = JSON.parse(response)
      response['movies'].should_not be_empty
      response['movies'][0]['ratings'].should be_kind_of Hash
      response['movies'][0]['ratings']['audience_score'].should be_kind_of Integer
  	end
  end

end
