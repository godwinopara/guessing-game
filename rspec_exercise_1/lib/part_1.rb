
def average(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0
    avg
end

def average_array(arr_num)
    sum = arr_num.sum * 1.0
    avg = sum / arr_num.length
    avg
end

def repeat(str, num)
    new_str = ""
    num.times {new_str+= str}
    new_str
end
def yell(str)
    new_str = str.upcase + "!"
    new_str
end

def alternating_case(str)
    sent = str.downcase.split(" ").map.with_index do |ele, idx|
        if idx % 2 == 0
            ele.upcase
        else
            ele
        end
    end
    sent.join(" ")
end
