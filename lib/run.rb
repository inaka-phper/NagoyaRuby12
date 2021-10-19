class Run
  def initialize(input)
    parser = Parser.new(input)

    @section = parser.section
    @passengers = parser.passengers

    adults = @passengers.select { |passenger| passenger.isAdult }

    @passengers
          .select { |passenger| passenger.isInfant }
          .sort_by { |passenger| Pricing.new(@section, passenger).toPrice }
          .reverse
          .take(adults.length * 2)
          .map { |passenger| passenger.setFree }
  end

  def price
    @passengers
          .map { |passenger| Pricing.new(@section, passenger).toPrice }
          .sum
  end
end
