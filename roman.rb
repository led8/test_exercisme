def solution(roman)
  count = 0
  data = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  data.each do |k, v|
    while roman.index(k) == 0
      count += v
      roman.slice!(k)
    end
  end
  p count

  # Solution 2
  # acc = 0
  # acc += roman.count('I')
  # acc += roman.count('V') * 5
  # acc += roman.count('X') * 10
  # acc += roman.count('L') * 50
  # acc += roman.count('C') * 100
  # acc += roman.count('D') * 500
  # acc += roman.count('M') * 1000
  # acc -= roman.scan('IV').size() * 2
  # acc -= roman.scan('IX').size() * 2
  # acc -= roman.scan('XL').size() * 20
  # acc -= roman.scan('XC').size() * 20
  # acc -= roman.scan('CD').size() * 200
  # acc -= roman.scan('CM').size() * 200
  # return acc
end
solution('XXI')
