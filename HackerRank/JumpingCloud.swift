//
//  JumpingCloud.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 24/6/21.
//

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var index = 0
    var jump = 0
    
    if c.count == 2 {
        if c[0] == 0 && c[1] == 0 {
            return 1
        }
        else
        {
            return 0
        }
    }
    while index<c.count-1 {
        if index+2<c.count-1 && c[index+2] == 0{
             index = index + 2
         }
        else
        {
            index = index + 1
        }
        jump = jump + 1
    }
    
    return jump
    
}
