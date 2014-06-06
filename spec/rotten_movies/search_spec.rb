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

end
