def select_even_nums(arr_num)
    new_arr = arr_num.select { |num| num % 2 == 0}
    new_arr
end

def reject_puppies(dogs)
    older = dogs.reject { |dog| dog["age"] < 3}
    older
end

def count_positive_subarrays(array2D)

    count = array2D.count { |arr| arr.sum > 0}
    count
end

def aba_translate(words)
    vowel = "aeiou"
    new_word = ""
    words.each_char do |char|
        if vowel.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
    end
    new_word
end

def aba_array(words)
    translated = words.map { |word| aba_translate(word)}
    translated
end