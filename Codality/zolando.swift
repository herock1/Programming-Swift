//
//  zolando.swift
//  Swift_Test_Programming
//
//  Created by Mehedi Hasan on 28/8/21.
//

import Foundation

public func solutionZol1(_ N : Int) -> String {
    // write your code in Swift 4.2.1 (Linux)
    var alterPlusMin = ""
    for i in 0..<N
    {
        if i%2==0 {
            alterPlusMin += "+"
        }
        else
        {
            alterPlusMin += "-"
        }
    }
    
    return alterPlusMin
}

//func maxValue(_ n: String, _ x: Int) -> String {

    
public func solutionZol2(_ N : Int) -> Int {

    let stringvalue = String(N)

    let x = Character(UnicodeScalar(UInt8(5 + 48))) // Int to Character
        var n = Array(stringvalue)
        func insert(_ start: Int, _ fit: (Character, Character) -> Bool) {
            for i in start..<n.count where fit(x, n[i]) {
                n.insert(x, at: i)
                return
            }
            n.insert(x, at: n.count)
        }
        if n [0] == "-" {
            insert(1, { $0 < $1 })
        } else {
            insert(0, { $0 > $1 })
        }
    return Int(String(n)) ?? 5
}
    
//public func solution(_ A : inout [Int]) -> Int {

public func solutionZol3(_ A :  [Int]) {

    var twoSum = [Int]()
    var valMap : [Int : Int] = [:]

    var max = 0
    for i in 0..<A.count
          {
            valMap[A[i]] = i
          }
    
    var sum = 0;
for j in 0..<A.count
    {
    sum += A[j];
    if sum == 0
    {
        max = max + 1
        print("Index ",j)

    }
    if(valMap[sum] != nil)
    {
        max = max + 1
        print("Index ",j)

    }
    }
//    return max
}

