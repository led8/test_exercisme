def check_if_integer(str)
  result = str.scan(/\d/)
  result
end

def check_if_zero(str)
  result = str.count('0')
  result
end

def increment_string(str)
  counter = check_if_integer(str).map(&:to_i).join.to_i
  no_zero = check_if_integer(str).empty? && !str.empty?
  one_zero = !check_if_integer(str).empty? && check_if_zero(str) < 1
  nine = !check_if_integer(str).empty? && check_if_integer(str).last == '9' && check_if_zero(str) >= 1
  more_zero = !check_if_integer(str).empty? && check_if_zero(str) >= 1

  p '1' if str.empty?
  p "#{str}1" if no_zero
  if one_zero
    p "#{str.delete('^a-z')}#{counter + 1}"
  elsif nine
    p "#{str.delete('^a-z-0')[0..-2]}#{counter + 1}"
  elsif more_zero
    if counter == 0
      p "#{str.delete('^a-z-0')[0..-2]}#{counter + 1}"
    else
      p "#{str.delete('^a-z-0')}#{counter + 1}"
    end
  end
end
increment_string('f00b4r1')
