def all_words_capitalized?(words)
    words.all? { |word| word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase}
end

def no_valid_url?(urls)
    url_ends = ['.com', '.net', '.io','.org']
    urls.none? { |url| url.end_with?(".com") || url.end_with?(".net") || url.end_with?(".io")|| url.end_with?(".org") }
end

def any_passing_students?(students)
    students.any? do |student|
        avg = student[:grades].sum / student[:grades].length
        avg > 75
    end
end
