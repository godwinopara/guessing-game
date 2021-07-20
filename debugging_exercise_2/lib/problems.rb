# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def prime?(num)
    return false if num < 2
    (2...num).each do |n|
        return false if num % n == 0
    end
    true
end

def largest_prime_factor(num)
    num.downto(2).each do |i|
        return i if prime?(i) && num % i == 0
    end
end

def unique_chars?(str)
    str.split("").each_with_index do |char, idx|
        (idx + 1...str.length).each do |idx_1|
            return false if char == str[idx_1]
        end
    end
    true
end

def dupe_indices(array)
    hash = {}
    array.each do |char|
        if check_dup(array, char).length > 1
            hash[char] = check_dup(array, char)
        end
    end
    hash
end
def check_dup(array, char)
    dups = []
    array.each_with_index do |ele, idx|
        dups << idx if char == ele
    end
    dups
end

def ana_array(arr_1, arr_2)
    return false if arr_1.length != arr_2.length
    arr_1.each do |char|
       return false if !arr_2.include?(char) 
    end
    arr_2.each do |char|
        return false if !arr_1.include?(char)
    end
    true
end