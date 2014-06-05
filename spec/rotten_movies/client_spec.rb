require "spec_helper"


describe RottenMovies::Client do 
  
  it "should initialize with an api key" do
  	client = RottenMovies::Client.new(api_key: 'test_key')
  	client.should be_kind_of Client
  end

end