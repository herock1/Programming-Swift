//
//  CountValleys.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 24/6/21.
//

import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    
    var stepCount = 0
    var vallyCount = 0
    var isVallyVisiting = false
    
    for step in path
    {
        if step == "D" {
            stepCount = stepCount - 1
        }
        else
        {
            stepCount = stepCount + 1
        }
        
        if stepCount < 0 {
            isVallyVisiting = true
        }
        
        if isVallyVisiting == true && stepCount == 0 {
            vallyCount = vallyCount + 1
            isVallyVisiting = false
        }
    }
    return vallyCount
}
