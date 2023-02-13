//
//  Move_zero.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 21/6/21.
//

import Foundation

var zero_nums = [0,1,0,3,12] // 1,0,0,3,12 / 1,3,0,0,12
func moveZeroes(_ nums: inout [Int]) {
    var nonZeroIndex = 0
    for i in 0..<nums.count {
        
        if (nums[i] != 0) {
            nums[nonZeroIndex] = nums[i]
            nonZeroIndex = nonZeroIndex + 1
        }
    }
    
    for i in nonZeroIndex..<nums.count {
        nums[i] = 0
        
    }
    }
