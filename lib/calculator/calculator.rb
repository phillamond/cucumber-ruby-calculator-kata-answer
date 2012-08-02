class Calculator
  
  @operator
  
  def initialize
    @operator = Operator.new
  end
  
  public
  def runwith(input)
    @operator.operate(input)
  end
  
end
