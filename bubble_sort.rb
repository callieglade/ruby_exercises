def bubble_sort(array)
    sorted = []
    len = array.length
    while sorted.length < len
        array.each_with_index do |num, idx|
            if idx == 0 && array.length >= 2
                next
            elsif idx == 0 && array.length == 1
                break
            else
                array[idx], array[idx-1] = array[idx-1], array[idx] if (num <=> array[idx-1]) == 1
            end
        end
        sorted << array[-1]
        array.pop
    end
    return sorted
end

def bubble_sort_by(array)
    sorted = []
    len = array.length
    while sorted.length < len
        array.each_with_index do |num, idx|
            if idx == 0 && array.length >= 2
                next
            elsif idx == 0 && array.length == 1
                break
            else
                array[idx], array[idx-1] = array[idx-1], array[idx] if yield(num, array[idx-1]) > 0
            end
        end
        sorted << array[-1]
        array.pop
    end
    return sorted
end