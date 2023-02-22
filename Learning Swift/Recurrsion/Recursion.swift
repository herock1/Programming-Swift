//
//  Recursion.swift
//  Programming-Swift
//
//  Created by Herock Hasan on 13/2/23.
//

import Foundation

var dp = [Int](repeating: -1, count: Int(Int8.max))

func fibRecursion(input: Int) -> Int {
    
    print(input)
    if input <= 1 {
        return input
    }
    return fibRecursion(input: input-1) + fibRecursion(input: input-2)
}

        
func dpfibRecursion(input: Int) -> Int {
    print(input)
    if input <= 1 {
        return input
    }
    
    if dp[input] != -1 {
        return dp[input]
    }
   
        dp[input] = dpfibRecursion(input: input-1) + dpfibRecursion(input: input-2)
        return dp[input]
}


var memo = [Int: Int]()

func fibonacciRecursive(n: Int) -> Int {
    
    print(n)
    
    if n <= 1 {
        return n
    }
    
    if let result = memo[n] {
        return result
    }
    
    memo[n] = fibonacciRecursive(n: n - 1) + fibonacciRecursive(n: n - 2)
    
    return memo[n]!
}


