//
//  DeleteArray.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 20/6/21.
//

import Foundation

var remove_nums = [3,2,2,3]
let remove_num = 3

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    var count : Int  = 0
    for i in 0..<nums.count {
        if val != nums[i] {
            nums[count] = nums[i]
            count = count + 1
        }
    }
    return count
  }
