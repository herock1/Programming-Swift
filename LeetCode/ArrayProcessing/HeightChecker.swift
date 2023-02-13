//
//  HeightChecker.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 21/6/21.
//

import Foundation

var heightArray = [1,1,4,2,1,3]
func heightChecker(_ heights: [Int]) -> Int {
         var map = [Int]()
        var count = 0
        for i in 0..<heights.count
        {
//            print(heights[i])
          if (map.contains(heights[i]))
          {
            
          }
          else
          {
            print(heights[i])
            map.append(heights[i])
            count = count + 1
          }
        }
        return count
    }
