$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
require 'calculator/operator'

describe 'Operator' do
  
  before(:each) do
    @operator = Operator.new
  end
  
  it "processes valid input" do
    output = @operator.operate("6*7")
    output.should eq "42"
  end
  
  it "rejects invalid input" do
    output = @operator.operate("6%7")
    output.should eq "ENOTSUPPORTED"
  end
end