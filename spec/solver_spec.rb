require_relative '../solver'
require 'rspec'

describe Solver do
  solver = Solver.new

  describe '#factorial' do
    it 'returns 1 for input 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial for positive integers' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(7)).to eq(5040)
    end

    it 'raises an error for negative integers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      expect(solver.reverse('test')).to eq('tset')
      expect(solver.reverse('lol')).to eq('lol')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" for multiples of 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for multiples of both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
