class Solver
  def factorial(number)
    raise ArgumentError, 'Input must be a non-negative integer' if number.negative?

    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    raise ArgumentError, 'Input must be a positive integer' unless number.is_a?(Integer) && number.positive?

    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
