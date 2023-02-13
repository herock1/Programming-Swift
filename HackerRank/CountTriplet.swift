//
//  CountTriplet.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 5/9/21.
//

import Foundation

// Using loop
/*
func countTriplets(arr: [Int], r: Int) -> Int {

    var count = 0
    
    for i in 0..<arr.count - 2 {
        
        for j in i+1..<arr.count-1 {
            
            for k in j+1..<arr.count {
                if arr[i]*r==arr[j] && arr[j]*r==arr[k]  {
                    count += 1
                    break
                }
            }
        }

    }
    
    return count
}
 */

// Using HashMap


func countTriplets(arr: [Int], r: Int) -> Int {

    var count = 0
    
    for i in 0..<arr.count-2 {
        
        for j in i+1..<arr.count-1 {
            
            for k in j+1..<arr.count {
                
            }
        }

    }
    
    return count
}

