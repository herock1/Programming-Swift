//
//  MiniMaxSum.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 22/6/21.
//

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var max = 0
    var min = 0
    let newarray = arr
    let count = newarray[0] + newarray[1] + newarray[2] + newarray[3] + newarray[4]
         min = count
    for i in 0..<newarray.count
    {
        let currentVal = count - newarray[i]
        if (currentVal>max)
        {
            max = currentVal
        }
        if (currentVal<min)
        {
            min = currentVal
        }
    }
print(min,max)

}
