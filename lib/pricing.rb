class Pricing
  def initialize(section, passenger)
    @section = section
    @passenger = passenger
  end

  def child(price)
    price.fdiv(2).fdiv(10).ceil * 10
  end

  def welfare(price)
    price.fdiv(2).fdiv(10).ceil * 10
  end
  
  # @return [Integer]
  def to_price
    if @passenger.pass? || @passenger.free?
      return 0
    end
    
    price = @section
    
    if @passenger.child? || @passenger.infant?
      price = child(price)
    end
    
    if @passenger.welfare?
      price = welfare(price)
    end
    
    price
  end
end
