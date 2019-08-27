def fizzbuzz_exception
  raise ArgumentError.new('Input should be positive') if integer.negative?
end

def fizzbuzz(integer)
  raise_exception

  (1..integer).to_a.map do |digit|
    if digit.modulo(3).zero? && digit.modulo(5).zero?
      'fizzbuzz'
    elsif digit.modulo(3).zero?
      'fizz'
    elsif digit.modulo(5).zero?
      'buzz'
    else
      digit
    end
  end
end
