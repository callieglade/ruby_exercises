module Enumerable
  class Array
    def my_each 
      i = 0
      while i < array.length
          yield(array[i])
          i += 1
      end
      return array
    end

    def my_each_with_index 
      i = 0
      while i < array.length
        yield(array[i], i)
        i += 1
      end
      return array
    end

    def my_select 
      new_array = []
      array.my_each {|item| new_array << item if yield(item)}
      return new_array
    end

    def my_all? 
      array.my_each do |item|
        if yield(item) == false
          return false
        else
          next
        end
      end
      return true
    end

    def my_any? 
      array.my_each do |item|
        if yield(item) == true
          return true
        else
          next
        end
      end
      return false
    end

    def my_none? 
      array.my_each do |item|
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
      array.my_each {|item| count += 1}
      return count
    end

    def my_map 
      new_array = []
      array.my_each {|item| new_array << yield(item)}
      return new_array
    end
  end
end