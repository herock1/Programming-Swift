//
//  SortArray.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 18/6/21.
//
import Foundation

let num = [2,9,4,1,6]

func sortedSquares(_ nums: [Int]) -> [Int] {
    var sortedNum = [Int]()
    
    for i in 0..<nums.count
    {
        let newNum = nums[i]*nums[i]
            sortedNum.append(newNum)
        
    }
    sortedNum.sort { $0 < $1 }
    return sortedNum
}

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var sortnum = [Int](repeating: -1, count: nums.count)
        var top = nums.count - 1
        var bottom = 0
        for i in 0..<nums.count
        {
            if(nums[i]%2 == 0)
            {
                sortnum[bottom] = nums[i]
                bottom = bottom + 1
            }
            else
            {
                sortnum[top] = nums[i]
                top = top - 1
            }
        }
        return sortnum
    }
