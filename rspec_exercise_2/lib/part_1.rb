def partition(array, num)
    left = array.select { |ele| ele < num}
    right = array.select { |ele| ele >= num}
    [left, right]
end

def merge(hash_1, hash_2)
    new_hash = {**hash_1}
    hash_2.each { | k, v| new_hash[k] = v}
    new_hash
end

def censor(sent, array)
    new_arr = []
    vowels = "aeiou"
    sent.split(" ").each do |word|
        if array.include?(word.downcase)
            word.each_char.with_index do |char, i|
                if vowels.include?(char.downcase)
                    word[i] = "*"
                end
            end
            new_arr << word
        else
            new_arr << word
        end
    end

    new_arr.join(" ")
end

def power_of_two?(num)
    return true if num == 1
    power2 = 2
    num.times do |i|
        power2 *= 2
        return true if power2 == num
    end
   return false 
end
