def first_non_repeating_letter(string)
  result = []
  string.split('').each{ |letter| result << letter if string.downcase.split('').count(letter.downcase) < 2 }
  p result.first
end
first_non_repeating_letter('sTreSS')
