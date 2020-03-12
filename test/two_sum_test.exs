defmodule TwoSumTest do
    use ExUnit.Case
    doctest TwoSum

    test "should return [0, 1]" do
        assert TwoSum.two_sum([2, 7, 11, 15], 9) == [0, 1]
    end

    test "should return [0, 0] if not found" do
        assert TwoSum.two_sum([2, 7, 11, 15], 2) == [0, 0]
    end

    test "should return [0, 0] if empty request" do
        assert TwoSum.two_sum([], 2) == [0, 0]
    end
end
