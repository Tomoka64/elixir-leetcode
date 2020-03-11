# https://leetcode.com/problems/two-sum/

defmodule Solution do
    def two_sum([head | tail], target, map, counter) do
        if Map.has_key?(map, head), do: [map[head], counter], else:
        two_sum(tail, target, Map.put(map, target-head, counter), counter + 1)
    end

    def two_sum([], _, _, _) do
        [0,0]
    end
end

test_cases = %{
    case1: %{nums: [2, 7, 11, 15], target: 9, expect: [0, 1]},
    case2: %{nums: [2, 7, 11, 15], target: 2, expect: [0, 0]},
    case3: %{nums: [], target: 2, expect: [0, 0]},
}

for  {_, v}  <-  test_cases  do
    got = Solution.two_sum(v.nums, v.target, %{}, 0) 
    if got == v.expect do 
        IO.write "SUCCESS: "
    else
        IO.write "FAIL: "
    end
    IO.inspect got
end
