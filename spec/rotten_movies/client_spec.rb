require "spec_helper"


describe RottenMovies::Client do 
  
  
  it "should set a default base url" do
  	client = RottenMovies::Client.new('test_key')
  	client.base_url.should eq RottenMovies::Client::BASE_URL + 'v1.0'
  end

  it "should use a passed in version number" do
    client = RottenMovies::Client.new('test_key', 'v1.1')
    client.base_url.should eq RottenMovies::Client::BASE_URL + 'v1.1'
  end

end