//
//  BinarySearch.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 8/9/21.
//

import Foundation


func searchInsert(_ nums: [Int], _ target: Int) -> Int {
       return searchInsert(nums, target, 0, nums.count - 1)
   }
   
   func searchInsert(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
       if left > right {
           return right + 1
       }
       
       let mid = (left + right) / 2
       if nums[mid] == target {
           return mid
       } else if nums[mid] > target {
           return searchInsert(nums, target, left, mid - 1)
       }
       return searchInsert(nums, target, mid + 1, right)
   }


/*
 if nums.contains(target) {
      guard let index = nums.index(of: target) else { return 0 }
      return index
  } else {
      for (index, num) in nums.enumerated() {
          if num > target {
              return index
          }
      }
      return nums.count
  }
}
 */

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty { return 0 }
        var lo = 0, hi = nums.count - 1
        
        while lo <= hi {
            var mid = lo + (hi-lo)/2
            if nums[mid] == target { return mid }
            else if nums[mid] < target { lo = mid + 1 }
            else { hi = mid - 1 }
        }
        
        return lo
    }
}

/*
func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        var mid = 0
        while left + 1 < right {
            mid = left + (right - mid) / 2
            if isBadVersion(mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        if isBadVersion(left) {
            return left
        }
        return right
    }
*/
