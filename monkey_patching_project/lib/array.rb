# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
    def span
        return nil if self.empty?
        largest= self.max
        smallest = self.min
        return largest - smallest
    end

    def average
        return nil if self.empty?
        sum = self.sum
        avg = sum / (self.length + 0.0)
        avg
    end

    def median
        return nil if self.empty?
        sorted = self.sort
        num_of_ele = self.length
        if num_of_ele % 2 == 0
            half = self.length / 2
            sum_middle_num = sorted[half - 1] + sorted[half]
            avg = sum_middle_num / 2.0
            return avg
        else

            return sorted[(sorted.length / 2)]
        end
    end

    def counts
        hash = Hash.new(0)

        self.each { |num| hash[num] += 1}

        hash
    end

    def my_count(value)
        count = 0
        self.each { |ele| count+= 1 if ele == value}
        count
    end

    def my_index(val)
        self.each_with_index { |ele, idx| return idx if ele == val}
        nil
    end

    def my_uniq
        uniq_arr = []
        self.each { |ele| uniq_arr << ele if !uniq_arr.include?(ele)}
        uniq_arr
    end

    def my_transpose
        new_arr = Array.new(self.length) { Array.new}
        (0...self.length).each do |idx_1|
            (0...self.length).each do |idx_2|
                new_arr[idx_2] << self[idx_1][idx_2]
            end
        end
        new_arr
    end
end
