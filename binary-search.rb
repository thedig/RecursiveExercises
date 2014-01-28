def bsearch(array, target)
  return nil if array.empty?
  m_i = (array.length - 1) / 2
  case array[m_i] <=> target
  when -1
    if bsearch(array[(m_i + 1)..-1], target).nil?
      return nil
    else
      return bsearch(array[(m_i + 1)..-1], target) + m_i + 1
    end
  when 1
    return bsearch(array[0...m_i], target)
  when 0
    return m_i
  end
end

b = [1,2,7,8,88,151]
p bsearch(b,8)





