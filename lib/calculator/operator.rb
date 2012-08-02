class Operator
  
  public
  def operate(input)
    chars = input.to_s.split("")
    operator = ""
    chars.each do |char|
      operator = char if char =~ /\+|\-|\/|\*/
    end
    return "ENOTSUPPORTED" if operator.empty?
    numbers = split_input_by_operator(input, operator)
    result = numbers.inject{ |sum, input| sum.send(operator.to_sym, input) }
    check_for_float_and_length(result.to_s)
  end
    
  private
  def split_input_by_operator(input, delimiter)
    input.to_s.split(/#{Regexp.quote(delimiter)}/).map(&:to_f)
  end
  
  private
  def check_for_float_and_length(value)
    value.gsub(/\.0$/, "")[0,13]
  end
  
end