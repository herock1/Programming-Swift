//
//  AlterChar.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 9/9/21.
//

import Foundation

func alternatingCharacters(s: String) -> Int {
    // Write your code here
    var prev = ""
    var deleteCount = 0
    let tempArray = Array(s)
    for i in 0..<s.count
    {
        if prev == String(tempArray[i])
        {
            deleteCount = deleteCount + 1
            
        }
        prev = String(tempArray[i])
    }
    return deleteCount

}
