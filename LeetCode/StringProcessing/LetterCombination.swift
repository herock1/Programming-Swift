//
//  LetterCombination.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 5/9/21.
//

import Foundation

func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 { return [] }
        var res = [""]
   
        let dict: [Character : String] =
            ["2" : "abc",
             "3" : "def",
             "4" : "ghi",
             "5" : "jkl",
             "6" : "mno",
             "7" : "pqrs",
             "8" : "tuv",
             "9" : "wxyz"]

        for digit in digits {
            
            if let letters = dict[digit] {
                let temp = res
                res.removeAll()
                for s in temp {
                    print(s)
                    for letter in letters {
                        res.append(s+String(letter))
                    }
                }
            }
        }
        return res
    }
