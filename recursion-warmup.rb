def range(start_val, end_val, arr = [])
  return arr if start_val + 1 == end_val

  arr << start_val + 1
  range(start_val + 1, end_val, arr)

end


def sum_iter(arr)
  sum = 0
  arr.each do |el|
    sum += el
  end
  sum

end

def sum_recur(arr, sum = 0)
  return sum if arr.length == 0

  sum = sum + arr[0]
  sum_recur(arr[1..-1], sum)

end