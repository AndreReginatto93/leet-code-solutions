function twoSum(nums: number[], target: number): number[] {
    const numsMap = new Map<number, number>();
    for (let index = 0; index < nums.length; index++) {
        const element = nums[index];
        const complement = target - element;
        if (numsMap.has(complement)) {
            return [numsMap.get(complement)!, index]
        }
        numsMap.set(element, index);
    }
    return [0, 0]
};

console.log(twoSum([2, 7, 11, 15], 9))