//
//  FindDisapper.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 22/6/21.
//

import Foundation

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var newnum = [Int]()
        var sortnum = [Int](repeating: 0, count: nums.count+2)

    for i in 0..<nums.count
        {
           sortnum[nums[i]] = 1
        }
        
    for i in 1...nums.count
        {
        print(sortnum[i])

            if(sortnum[i] == 0)
            {
                newnum.append(i)
            }
        }
    
        return newnum
    }
