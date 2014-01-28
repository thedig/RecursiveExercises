def deep_dup(arr)
  new_arr = []

  arr.each do |el|

    new_arr << (el.is_a?(Array) ? deep_dup(el) : el)

    if el.is_a?(Array)
      new_arr << deep_dup(el)
    else
      new_arr << el
    end
  end

  new_arr
end