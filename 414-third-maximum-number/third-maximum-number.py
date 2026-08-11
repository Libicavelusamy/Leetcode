class Solution:
    def thirdMax(self, nums: List[int]) -> int:
        nums1=list(set(nums))
        nums1.sort(reverse=True)
        if len(nums1)<3:
            return nums1[0]
        else:
            return nums1[2]

        

        