class Array

  def my_each(&prc)
    self.length.times do |index|
      prc.call(self[index])
    end
    self
  end


  def my_map(&prc)
    new_arr = []
    self.my_each do |el|
      new_arr << prc.call(el)
    end
    new_arr
  end

  def my_select(&prc)
    new_arr = []
    self.my_each do |el|
      new_arr << el if prc.call(el)
    end
    new_arr
  end

  def my_inject(&prc)
    value = self[0]
    ((self.length) - 1).times do |index|
      value = prc.call(value, self[index + 1])
    end
    value
  end


  def my_sort!(&prc)
    sorted = false
    until sorted
      sorted = true
      self.length.times do |ind|
        case prc.call(self[ind],self[ind + 1])
        when 1
          self[ind], self[ind + 1] = self[ind + 1], self[ind]
          sorted = false
        end
      end

    end
    self
  end


end

array = [2,4,6]
array.my_each do |el| 
  p el * 2
end