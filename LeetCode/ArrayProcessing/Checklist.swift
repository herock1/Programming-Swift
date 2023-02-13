//
//  Checklist.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 20/6/21.
//

import Foundation
var checklist_num = [-2,0,10,-19,4,6,-8]

func checkIfExist(_ arr: [Int]) -> Bool {
    var map = [Int]()
        for i in 0..<arr.count
        {
            if (map.contains(arr[i]*2) || (map.contains(arr[i]/2) && arr[i]%2==0) )
          {
            return true
          }
            else
          {
            map.append(arr[i])
          }
        }
        return false
    }
