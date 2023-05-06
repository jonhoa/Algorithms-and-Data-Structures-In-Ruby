def two_sum(nums, target)
    count = {}
    nums.each_with_index do |key, value|
      diff = target - key
      p "diff is #{diff}"
      if count[diff]
        return [count[diff], value]
      else
       count[key] = value
      end
    end
end
