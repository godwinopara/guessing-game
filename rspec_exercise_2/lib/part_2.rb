def palindrome?(str)
    reverseStr = ""
    (str.length - 1).downto(0).each do |i|
        reverseStr += str[i]
    end
    reverseStr == str
end

def substrings(str)
    sub_arr = []
    str.each_char.with_index do |char, idx_1|
        sub_arr << char
        (idx_1 + 1...str.length).each do |idx_2|
            sub_arr << str[idx_1..idx_2]
        end
    end
    sub_arr
end

def palindrome_substrings(str)
    palind_sub = []
    substr = substrings(str)
    substr.each do |word|
        palind_sub << word if palindrome?(word) && word.length > 1
    end
    palind_sub
end