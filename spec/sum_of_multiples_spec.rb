require "sum_of_multiples"
describe "sum_of_multiples" do

  context "when there are no multiples within the limit" do
      it "returns zero " do
        object = SumOfMultiples.new(3, 5)
        expect(object.calculate_sum(2)).to eq(0)
      end
  end

  context "when there is one multiple within the limit" do
    it "returns 3" do
      object = SumOfMultiples.new(3, 5)
      expect(object.calculate_sum(4)).to eq(3)
    end
  end

  context "when there are more than one multiples within the limit" do
    it "returns 10000" do
      object = SumOfMultiples.new(43, 47)
      expect(object.calculate_sum(10000)).to eq(2203160)
    end
  end

  context "when testing for the limit zero" do
    it "returns 0" do
      object = SumOfMultiples.new(43, 47)
      expect(object.calculate_sum(0)).to eq(0)
    end
  end

  context "when testing for multiples of more than two numbers" do
    it "returns 37" do
      object = SumOfMultiples.new(2, 3, 5)
      expect(object.calculate_sum(10)).to eq(37)
    end
  end

  
end