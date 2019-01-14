class SumOfMultiples
  @number
  @another_number
  def initialize(a, b)
    @number = a
    @another_number = b
  end
  def calculate_sum(limit)
    i = 1
    sum=0
    loop do
      if i >= limit
        break
      elsif (i % @number == 0 || i % @another_number == 0)
        sum = i
        break
      end
      i = i + 1
    end
    sum
  end
end