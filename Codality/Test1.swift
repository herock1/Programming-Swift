//
//  Test1.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 28/6/21.
//

import Foundation

public func solution(_ Y : Int, _ A : inout String, _ B : inout String, _ W : inout String) -> Int {
    // write your code in Swift 4.2.1 (Linux)
return 1 
    
}

func isLeapYear(datum: Date) -> Bool {
    
    let calendar = Calendar(identifier: .gregorian)
    let dateComponents = DateComponents(year: Int(calendar.component(.year, from: datum)), month: 2)
    let date = calendar.date(from: dateComponents)!
    let range = calendar.range(of: .day, in: .month, for: date)!
    let numDays = range.count
    
    if numDays == 29 {
        return true
    }else {
        return false
    }

}



