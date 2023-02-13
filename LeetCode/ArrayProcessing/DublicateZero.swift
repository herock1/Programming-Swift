//
//  DublicateZero.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 19/6/21.
//

/*
Insert and Deletation input array using Swift
 Input: [1,0,2,3,0,4,5,0]
 Output: null
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 
 Iteration
    [1,0,0,2,3,0,4,5]
    [1,0,0,2,3,0,0,4]
*/

import Foundation

var dublicateZeroInput : [Int] = [1,0,2,3,0,4,5,0]

func duplicateZeros(_ arr: inout [Int]) {
    var i = 0
    while i<arr.count-1 {
//        print(i)
        if (arr[i] == 0) {
            for j in (i+1...arr.count-1).reversed() {
               arr[j]=arr[j-1]
            }
            arr[i+1]=0
            i = i + 2
        }
        else
        {
            i = i + 1
        }
    }
  }
