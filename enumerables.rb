module Enumerable
  def my_each 
    i = 0
    while i < self.length
        yield(self[i])
        i += 1
    end
    return self
  end

  def my_each_with_index 
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
    return self
  end

  def my_select 
    new_array = []
    self.my_each {|item| new_array << item if yield(item)}
    return new_array
  end

  def my_all? 
    self.my_each do |item|
      if yield(item) == false
        return false
      else
        next
      end
    end
    return true
  end

  def my_any? 
    self.my_each do |item|
      if yield(item) == true
        return true
      else
        next
      end
    end
    return false
  end

  def my_none? 
    self.my_each do |item|
      if yield(item) == true
        return false
      else
        next
      end
    end
    return true
  end

  def my_count 
    count = 0
    self.my_each {|item| count += 1}
    return count
  end

  def my_map 
    new_array = []
    self.my_each {|item| new_array << yield(item)}
    return new_array
  end

  def my_inject(init=0)
    sum = self[init]
    self.my_each_with_index do |item, idx|
      next if idx <= init
      sum = yield(sum, item)
    end
    return sum
  end
end

def multiply_els(array)
  array.my_inject{|sum, item| sum *= item}
end