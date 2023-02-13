//
//  MatrixSum.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 26/6/21.
//

import Foundation

var matrix = [
            [1, 1, 1, 0, 0, 0],
             [0, 1, 0, 0, 0, 0],
             [1, 1, 1, 0, 0, 0],
             [0, 0, 2, 4, 4, 0],
             [0, 0, 0, 2, 0, 0],
             [0, 0, 1, 2, 4, 0]
            ]

func hourglassSum(arr: [[Int]]) -> Int {
    // Write your code here
    var total = -Int.max
    
    let rowEndIndex = 4
    let colEndIndex = 4
    
        for y in 0..<rowEndIndex
        {
            for x in 0..<colEndIndex {
                        var sum = arr[y][x] + arr[y][x+1] + arr[y][x+2];
                            // get the middle of hourglass
                            sum += arr[y+1][x+1];
                            
                            // sum the bottom of hourglass
                            sum += arr[y+2][x] + arr[y+2][x+1] + arr[y+2][x+2]
                            
                            // don't store result to keep space complexity down
                            if (total < sum)
                            {
                                total = sum;

                            }
            }
        }
    return total

}
