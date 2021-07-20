def hipsterfy(word)
    vowel = "aeiou"
    new_str = ""
    (word.length - 1).downto(0).each do |num|
         if vowel.include?(word[num])
            left = word[0...num]
            right = word[num + 1..-1]
            return left + right
         end
    end
    word
end

def vowel_counts(str)
    vowel = "aeiou"
    hash = Hash.new(0)
    str.downcase.each_char do |char|
       hash[char] += 1 if vowel.include?(char)
    end

    hash
end

def caesar_cipher(msg, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""

    msg.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = (old_index + num) % 26
            new_str += alphabet[new_index]
        else
            new_str += char
        end
    end
    new_str
end
