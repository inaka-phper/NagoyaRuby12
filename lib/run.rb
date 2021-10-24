class Run
  def initialize(input)
    parser = Parser.new(input)

    @section = parser.section
    @passengers = parser.passengers

    adults = @passengers.select { |passenger| passenger.adult? }

    @passengers
          .select { |passenger| passenger.infant? }
          .sort_by { |passenger| Pricing.new(@section, passenger).to_price }
          .reverse
          .take(adults.length * 2)
          .map { |passenger| passenger.set_free }
  end

  def price
    @passengers
          .map { |passenger| Pricing.new(@section, passenger).to_price }
          .sum
  end
end
