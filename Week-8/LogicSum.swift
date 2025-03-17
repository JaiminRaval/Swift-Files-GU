//  Challenge title:  TwoSum
//  Challenge statement:  Given an array of integers 'nums' and an integer 'target',
//                  return "indices" of the two numbers such that they add up to "target".
//                  You may "assume" that each input would have exactly "one" solution, and you may not use the same element twice.
//                  You can return the answer in "any" order.
//
//  Example-1:
//      Func Input: nums = [2,7,11,15], target = 9
//      Func Oputput: [0,1]
//      Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//
//  Example-2:
//      Func Input: nums = [3,2,4], target = 6
//      Func Oputput: [1,2]

//  Func Signature
func TwoSum(nums: [Int], target: Int) -> [Int] {
    var ans: [Int] = []
    let len = nums.count
    print(len)
    for i in Range(0...(len - 2)) {
        if nums[i] + nums[i + 1] == target {
            ans.append(i)
            ans.append(i + 1)
        }
    }
    return ans
}

var answer = TwoSum(nums: [2, 7, 11, 15], target: 9)
print("output array = \(answer)")
