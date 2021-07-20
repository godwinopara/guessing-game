def reverser(str, &prc)
    char = ""
    str.reverse.split(" ").each { |ele| char += prc.call(ele)}
    char
end

def word_changer(sent, &prc)
    new_sent = []
    sent.split(" ").each { |word| new_sent << prc.call(word)}
    new_sent.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)
    if result_1 > result_2
        return result_1
    else
        return result_2
    end
end

def and_selector(arr, prc_1, prc_2)
    new_arr = []
    arr.each { |ele| new_arr << ele if prc_1.call(ele) && prc_2.call(ele)}
    new_arr
end

def alternating_mapper(arr, prc_1, prc_2)
    new_arry = []
    arr.each_with_index do |ele, idx|
        if idx % 2 == 0
            new_arry << prc_1.call(ele)
        else
            new_arry << prc_2.call(ele)
        end
    end
    new_arry
end