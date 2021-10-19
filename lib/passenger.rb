class Passenger
  def initialize(symbol)
    @type = symbol[0]
    @pass = symbol[1] === 'p'
    @welfare = symbol[1] === 'w'
    @free = false
  end

  def isPass
    @pass
  end

  def setFree
    if isChild || isInfant
      @free = true
    else
      raise ArgumentError.new('大人は無料に出来ません。')
    end
  end

  def isFree
    @free
  end

  def isWelfare
    @welfare
  end

  def isNormal
    @pass && !@welfare
  end

  def isChild
    @type == 'C'
  end

  def isAdult
    @type == 'A'
  end

  def isInfant
    @type == 'I'
  end
end