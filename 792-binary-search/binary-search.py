class Solution:
    def search(self, nums: List[int], target: int) -> int:
        low=0
        high=len(nums)-1
        found=False
        loop_count=0
        while low<=high:
            mid=(low+high)//2
            if nums[mid]==target:
                return mid # print(the element was found in the index of,mid)
                found=True
                break
            elif nums[mid]>target:
                high=mid-1
            else:  
                low=mid+1
        if found==False:
            return -1