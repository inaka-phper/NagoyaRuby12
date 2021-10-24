class Passenger
  def initialize(symbol)
    @type = symbol[0]
    @pass = symbol[1] === 'p'
    @welfare = symbol[1] === 'w'
    @free = false
  end

  def pass?
    @pass
  end

  def set_free
    if child? || infant?
      @free = true
    else
      raise ArgumentError.new('大人は無料に出来ません。')
    end
  end

  def free?
    @free
  end

  def welfare?
    @welfare
  end

  def normal?
    @pass && !@welfare
  end

  def child?
    @type == 'C'
  end

  def adult?
    @type == 'A'
  end

  def infant?
    @type == 'I'
  end
end