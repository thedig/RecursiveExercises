def merge_sort(arr)
  return arr if arr.length == 1
  #base case
  arr1 = arr[0...(arr.length/2)]
  arr2 = arr[(arr.length/2)..-1]

  merge(merge_sort(arr1), merge_sort(arr2))

end


def merge(half_1,half_2)
  merged_arr = []
  h_1 = half_1.dup
  h_2 = half_2.dup

  (h_1.length + h_2.length).times do
    if h_2.empty?
      merged_arr << h_1.shift
    elsif h_1.empty?
      merged_arr << h_2.shift
    elsif (h_1[0] < h_2[0])
      merged_arr << h_1.shift
    else
      merged_arr << h_2.shift
    end
  end
  merged_arr

end
