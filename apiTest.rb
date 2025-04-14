require './basetest.rb'
require 'rspec'




#Everything within an example group is an example. i.e. Test Suite -> Test case
RSpec.describe "API Tests" do
  test = BaseRestClient.new("https://restful-booker.herokuapp.com")

  #any block of code within this it method exclusively belongs to this it method, the scope is within this it method only
  it 'Get Method API Call' do
    response = test.get("booking")
    puts response

  end

  it 'Post Method API Call' do
    response = test.post("auth", {})
    puts response
  end

end