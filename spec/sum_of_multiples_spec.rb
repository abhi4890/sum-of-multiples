require "sum_of_multiples"
describe "sum_of_multiples" do

  context "when there are no elements within the limit" do
      it "returns zero " do
        object = SumOfMultiples.new(3, 5)
        expect(object.calculate_sum(2)).to eq(0)
      end
  end
end