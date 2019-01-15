class SumOfMultiples
  @factors
  def initialize(*factors)
    @factors = factors
  end
  def calculate_sum(limit)
    array_of_multiples = []
    sum = 0
    @factors.each do |a_factor|
      i = 1
      loop do
        if a_factor * i >= limit
          break
        end
        if !array_of_multiples.include?(a_factor * i)
        sum += a_factor * i
        end
        array_of_multiples << a_factor * i
        i = i + 1
      end
    end
    sum
  end
end
