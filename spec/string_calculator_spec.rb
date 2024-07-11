require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context 'when input is two numbers separated by a comma' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1,5")).to eq(6)
      end
    end

    context 'when input is multiple numbers separated by commas' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1,2,3")).to eq(6)
      end
    end

  end
end
