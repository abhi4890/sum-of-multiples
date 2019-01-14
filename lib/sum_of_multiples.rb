class SumOfMultiples
  @number
  @another_number
  def initialize(a, b)
    @number = a
    @another_number = b
  end
  def calculate_sum(limit)
    i = 1
    sum = 0
    #loop for checking if is multiple of @number
    loop do
      if i >= limit
        break
      elsif i % @number == 0
        sum += i
      end
      i = i + 1
    end
    #loop for checking if i is multiple of @another_number
    i=1
    loop do
      if i >= limit
        break
      elsif (i % @another_number == 0 && i % @number != 0)
        sum += i
      end
      i = i + 1
    end
    sum
  end
end
