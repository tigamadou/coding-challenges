def two_sum(nums, target)
  nums.size.times do |x|    
    dif = target - nums[x]    
    return [x, nums.find_index(dif)]  if nums.include?(dif) && x != nums.index(dif) 
  end
end
