class Passenger
  def initialize(symbol)
    @type = symbol[0]
    @pass = symbol[1] === 'p'
    @welfare = symbol[1] === 'w'
    @free = false
  end

  def is_pass
    @pass
  end

  def set_free
    if is_child || is_infant
      @free = true
    else
      raise ArgumentError.new('大人は無料に出来ません。')
    end
  end

  def is_free
    @free
  end

  def is_welfare
    @welfare
  end

  def is_normal
    @pass && !@welfare
  end

  def is_child
    @type == 'C'
  end

  def is_adult
    @type == 'A'
  end

  def is_infant
    @type == 'I'
  end
end