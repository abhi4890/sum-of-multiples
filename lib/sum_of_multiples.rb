class SumOfMultiples
  @numbers
  def initialize(*numbers)
    @numbers = numbers
  end
  def calculate_sum(limit)
    i = 1
    j=0         #index for iterating through the array @numbers
    sum = 0
    loop do
      if i >= limit
        break
      end
      j = 0
      loop do
        if j >= @numbers.length
          break
        end
        if i % @numbers[j] == 0
          sum += i
          break
        end
        j = j + 1
      end
      i = i + 1
    end
    sum
  end
end
