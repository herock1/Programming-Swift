//
//  StringToInteger.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 2/9/21.
//

import Foundation

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}


func myAtoi(_ s: String) -> Int {
    
    guard s.count > 0 else {
            return 0
        }
    
    let inputStr = s.trimmingCharacters(in: .whitespaces)
    var inputArray = Array(inputStr)
    var isNegative =  false
    
    if (inputArray.first == "-" || inputArray.first == "+")
    {
        if inputArray.first == "-" {
            isNegative = true
        }
        
        inputArray.removeFirst()
    }
    
    var result : Double = 0
    
    while let char = inputArray.first, let val = Double(String(char)) {
        
        result *= 10
        
        inputArray.removeFirst()
        
        result += val
    }
    
    if result > Double(Int32.max) || result < Double(Int32.min) {
            return isNegative ? Int(Int32.min) : Int(Int32.max)
        }
    else {
            let num = Int(result)
            return isNegative ? num * -1 : num
        }
    
   }


//func removeSpecialCharsFromString(str: String) -> String {
//    let chars = Set(" 1234567890+-")
//    return String(str.filter { chars.contains($0) })
//}

//let cleaned = removeSpecialCharsFromString("ab€xy")
//print(cleaned)
