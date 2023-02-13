//
//  RomanToInt.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 1/9/21.
//

import Foundation
/*
extension Character {
    static let romanNumerals: [Character:Int] = [
        "I":1,
        "V":5,
        "X":10,
        "L":50,
        "C":100,
        "D":500,
        "M":1000
    ]
    var romanNumeral: Int {
        guard let num = Character.romanNumerals[self] else {
            return 0
        }
        return num
    }
}

class Solution {
    
    func romanToInt(_ s: String) -> Int {
        let inputArr = Array(s)
        
        var total = 0
        var i = 0
        while i < s.count {
            var num = inputArr[i].romanNumeral
            if i < s.count-1 {
                let nextNum = inputArr[i+1].romanNumeral
                if nextNum > num {
                    num = nextNum - num
                    i+=1
                }
            }
            i+=1
            total += num
        }
        return total
    }
}
*/

func romanToInt(_ s: String) -> Int {
    
    let numberMap : [Character : Int] = ["I" : 1,
                                         "V" : 5,
                                         "X" : 10,
                                         "L" : 50,
                                         "C" : 100,
                                         "D" : 500,
                                         "M" : 1000,
                                        ]
    let inputArr = Array(s)
    var total = 0
    var i = 0
    while i < s.count {
        var num = numberMap[inputArr[i]] ?? 0
        if i < s.count-1 {
            let nextNum = numberMap[inputArr[i+1]] ?? 0
            if nextNum > num {
                num = nextNum - num
                i+=1
            }
        }
        i+=1
        total += num
    }
    return total
}


