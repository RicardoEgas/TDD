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
end