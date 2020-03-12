defmodule TwoSum do
    def two_sum(nums, target) do
        two_sum_helper(nums, target, %{}, 0)
    end

    def two_sum_helper([head | tail], target, map, counter) do
        if Map.has_key?(map, head), do: [map[head], counter], else:
        two_sum_helper(tail, target, Map.put(map, target-head, counter), counter + 1)
    end

    def two_sum_helper([], _, _, _) do
        [0,0]
    end
end
# https://leetcode.com/problems/two-sum/
