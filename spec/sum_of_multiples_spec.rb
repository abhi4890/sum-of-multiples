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
end