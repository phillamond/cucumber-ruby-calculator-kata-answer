Given /^the input "(.*?)"$/ do |input|
  @input = input
  @calc = Calculator.new
end

When /^the calculator runs the addition$/ do
  @output = @calc.runwith(@input)
end

When /^the calculator runs the subtraction$/ do
  @output = @calc.runwith(@input)
end

When /^the calculator runs the division$/ do
  @output = @calc.runwith(@input)
end

When /^the calculator runs the multiplication$/ do
  @output = @calc.runwith(@input)
end

When /^the calculator runs with the input$/ do
  @output = @calc.runwith(@input)
end

Then /^the output should be "(.*?)"$/ do |expected|
  @output.should == expected
end

Then /^the display should be (\d+) characters long$/ do |display_length|
  @output.length.should be display_length.to_i
end
