def find_uniq(arr)
  arr
  def count(int, arr)
    arr.each do |el|
      puts el if el == int
    end
  end
  count(2, arr)
end
find_uniq([1, 1, 1, 2, 1])
