def lucky_number(date)
  # Solution 2
  # result = 0
  # date.digits.sum.digits.map{|int| result += int}
  # puts result

  # Solution 1
  # puts date.digits.sum.digits.sum.digits.sum

  # Solution 3
  # array = []
  # arr = []
  # a = []
  # date.to_s.split('').each{|int| array << int.to_i}
  # array.sum.to_s.split('').each{|int| arr << int.to_i}
  # arr.sum.to_s.split('').each{|int| a << int.to_i}
  # puts a.sum

  # Solution 4
  # while date > 9
  #   res = 0
  #   date.to_s.each_char{|el| res += el.to_i}
  #   date = res
  # end
  # puts date

  # Solution 5
  # n = date.digits.sum
  # n < 10 ? n : lucky_number(n)

  # Solution 6
  while date > 9
    date = date.digits.sum
  end
  puts date
end
lucky_number(441981)
