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
        array.my_each {|x| new_array << x if yield(x)}
        return new_array
    end
end