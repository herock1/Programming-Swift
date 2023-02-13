//
//  RepetedString.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 24/6/21.
//

import Foundation

func repeatedString(s: String, n: Int) -> Int {
    // Write your code here
    var count = 0
    let inputArray = Array(s)
    for input in s
    {
        if input == "a"
        {
            count = count + 1
        }
    }
    var total : Int = (n/s.count)*count
    
    for i in 0..<n%s.count
    {
        if inputArray[i] == "a"
        {
            total = total + 1
        }
    }
    return total

}

//func myAtoi(_ s: String) -> Int {
//       var output = Int(s)
//    print(output)
//    return output ?? 0
//   }
