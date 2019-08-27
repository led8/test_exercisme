def comp(array1, array2)
  arr = array1.map{|element| element * element}

  # Solution 1
  p array2 - arr

  # Solution 2
  p array2.sort.eql?(arr.sort)
end
comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
