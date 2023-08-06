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


func isPrime(_ num: Int) -> Bool {
    
    let topNum =   Int(sqrt(Double(num)))
    print(topNum)
    for i in 2...topNum {
        print(i)
        if num%i == 0 {
            return false
        }
    }
    return true
}

func defineSwift () {
    let num = 3
    var variableNum : Int?
    var map: [String : String] = [:]
    var array : [Int]? // Optional Array
    var array2 : [Int] = Array(repeating: 0, count: 5) // Length 5 array with 0
    
}
