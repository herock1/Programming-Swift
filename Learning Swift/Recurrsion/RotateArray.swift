//
//  ReverseArray.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 26/6/21.
//

import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {
    // Write your code here
    var sortnum = [Int](repeating: 0, count: a.count)
    
    for i in 0..<a.count
    {
        let index = (i+sortnum.count+d)%a.count
        sortnum[i]=a[index]
    }
    return sortnum
}

func rightShift(a: [Int], d: Int) -> [Int] {
    // Write your code here
    var sortnum = [Int](repeating: 0, count: a.count)
    
    for i in (0...(a.count-1))    {
        let index = (i+d)%(a.count)
        sortnum[index]=a[i]
    }
    return sortnum
}
