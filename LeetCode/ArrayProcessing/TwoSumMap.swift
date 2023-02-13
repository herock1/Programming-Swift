//
//  TwoSum.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 26/6/21.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var twoSum = [Int]()
        var valMap : [Int : Int] = [:]
        for i in 0..<nums.count
        {
            let val : Int = target - nums[i]
            if(valMap[val] != nil)
            {
                let index : Int = valMap[val]!
                twoSum.append(index)
                twoSum.append(i)
            }
            else
            {
                valMap[nums[i]] = i
            }
        }
        return twoSum
    }
