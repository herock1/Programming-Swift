//
//  MountainArray.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 21/6/21.
//

import Foundation

var mountain_num = [0,3,2,1]

func validMountainArray(_ arr: [Int]) -> Bool {
     var left = false
       var right = false
    for i in 0..<arr.count-1 {
        if (arr[i] < arr[i+1] && right == false) {
         left = true
        }
        else if(left == true && arr[i]>arr[i+1])
        {
            right = true
        }
        else
        {
            return false
        }
    }
    if (left == true && right == true ) {
        return true
    }
    else
    {
        return false
    }
}
   
