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
    if @passenger.is_pass || @passenger.is_free
      return 0
    end
    
    price = @section
    
    if @passenger.is_child || @passenger.is_infant
      price = child(price)
    end
    
    if @passenger.is_welfare
      price = welfare(price)
    end
    
    price
  end
end
