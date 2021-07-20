def my_map(arr, &prc)
    new_arry = []
    arr.each { |ele| new_arry << prc.call(ele)}
    new_arry
end

def my_select(arr, &prc)
    new_arry = []
    arr.each { |num| new_arry << num if prc.call(num)}
    new_arry
end

def my_count(arr, &prc)
    count = 0
    arr.each { |num| count+= 1 if prc.call(num)}
    count
end

def my_any?(arr, &prc)
    arr.each do |num|
        if prc.call(num)
            return true
        end
    end
    false
end

def my_all?(arr, &prc)
    arr.each { |ele| return false if !prc.call(ele)}
    true
end

def my_none?(arr, &prc)
    arr.each { |ele| return false if prc.call(ele)}
    true
end
