class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        result_indices = []
        n = len(nums)

        for i in range(n - 1):
            for j in range(i+1, n):
                if nums[i] + nums[j] == target:
                    result_indices.append(i)
                    result_indices.append(j)
                    break
        return result_indices

        