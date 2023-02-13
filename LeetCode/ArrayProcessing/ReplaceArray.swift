//
//  ReplaceArray.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 21/6/21.
//

import Foundation

let replace_arr = [1]
func replaceElements(_ arr: [Int]) -> [Int] {
    var newArray = arr
    if arr.count == 1 {
        return [-1]
    }
    let length = arr.count - 1
        newArray[length] = -1
    var rightMax = arr[length]
    for i in (0...length-1).reversed() {
        newArray[i] = rightMax
        if (rightMax < arr[i]) {
            rightMax = arr[i]
        }
    }
    print(newArray)
    return newArray
   }
