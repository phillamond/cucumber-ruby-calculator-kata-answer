Given /^the input "(.*?)"$/ do |input|
  @input = input
end

When /^the calculator runs the addition$/ do
  @output = Calculator.add(@input)
end

When /^the calculator runs the subtraction$/ do
  @output = Calculator.subtract(@input)
end

When /^the calculator runs the division$/ do
  @output = Calculator.divide(@input)
end

When /^the calculator runs the multiplication$/ do
  @output = Calculator.multiply(@input)
end

Then /^the output should be "(.*?)"$/ do |expected|
  @output.to_s.should == expected
end
