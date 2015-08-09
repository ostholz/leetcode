ram {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    dict = {}
    result = []
    nums.each_with_index do |num, idx|
        complement = target - num
        if dict[complement]
            result << dict[complement]
            result << (idx +1)
            dict[num] = (idx +1)
        else
            dict[num] = (idx +1)
        end
    end
    result.sort
end
