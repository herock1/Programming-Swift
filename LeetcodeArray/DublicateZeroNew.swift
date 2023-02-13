//
//  DublicateZeroNew.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 7/9/21.
//

import Foundation

func leetduplicateZeros(_ arr: inout [Int]) {
    
   arr = arr.filter { (num : Int) -> Bool in
        num != 0
    }
    print(arr)
//    
//    var i = 0
//    while i<arr.count-1 {
//        
//        if arr[i] == 0 {
//            
//            for j in (i+1..<arr.count).reversed()
//            {
//                arr[j] = arr[j-1]
//            }
//        }
//        else
//        {
//            i += 1
//        }
//    }
    print(arr)
}
