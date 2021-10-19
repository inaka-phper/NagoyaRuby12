class Parser
  attr_reader :section, :passengers

  def initialize(input)
    parse = input.split(/:/)
    @section = parse[0].to_i
    @passengers = parse[1].split(/,/).map { |passenger| Passenger.new(passenger) }
  end
end
