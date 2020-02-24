module Enumerable
    def my_each(array)
        i = 0
        while i < array.length
            yield(array[i])
            i += 1
        end
        return array
    end

    def my_each_with_index(array)
        i = 0
        while i < array.length
            yield(array[i], i)
            i += 1
        end
        return array
    end

    def my_select(array)
        new_array = []
        array.my_each {|item| new_array << item if yield(item)}
        return new_array
    end

    def my_all?(array)
        array.my_each do |item|
            if yield(item) == false
                return false
            else
                next
            end
        end
        return true
    end
end