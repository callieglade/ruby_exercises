def caesar_cipher(str, rot)
    rot = rot.to_i
    ups = ("A".."Z").to_a
    downs = ("a".."z").to_a 
    str_array = str.split('')
    new_array = str_array.map do |x|
        if ups.include?(x)
            idx = (ups.index(x) + rot) % 26
            ups[idx]
        elsif downs.include?(x)
            idx = (downs.index(x) + rot) % 26
            downs[idx]
        else
            x
        end
    end
    new_array.join
end

puts "Phrase:"
phrase = gets.chomp
puts "Rotate by:"
number = gets.chomp

puts caesar_cipher(phrase, number)