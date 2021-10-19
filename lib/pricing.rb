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
  def toPrice
    if @passenger.isPass || @passenger.isFree
      return 0
    end
    
    price = @section
    
    if @passenger.isChild || @passenger.isInfant
      price = child(price)
    end
    
    if @passenger.isWelfare
      price = welfare(price)
    end
    
    price
  end
end
