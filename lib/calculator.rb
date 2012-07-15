module Calculator
  def add(input)
    chars = split_input(input, '+')
    result = chars.inject{ |sum, input| sum + input }
    check_for_float(result.to_s)
  end
  
  def subtract(input)
    chars = split_input(input, '-')
    result = chars.inject{ |sum, input| sum - input }
    check_for_float(result.to_s)
  end
  
  def divide(input)
    chars = split_input(input, '/')
    result = chars.inject{ |sum, input| sum / input }
    check_for_float(result.to_s)
  end
  
  def multiply(input)
    chars = split_input(input, '*')
    result = chars.inject{ |sum, input| sum * input }
    check_for_float(result.to_s)
  end
    
  def self.split_input(input, delimiter)
    input.to_s.split(/#{Regexp.quote(delimiter)}/).map(&:to_f)
  end
  
  def self.check_for_float(value)
    value.gsub(/\.0$/, "")
  end
  
  module_function :add
  module_function :subtract
  module_function :divide
  module_function :multiply
end
