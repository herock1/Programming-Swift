//
//  ReverseNumber.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 2/9/21.
//

import Foundation

func reverse(_ x: Int) -> Int {
      
    var input = abs(x)
    var reverseNum = 0
    
    while input != 0 {
        let lastdigit =  input%10
        input = input/10
        reverseNum = reverseNum*10 + lastdigit
    }
    
    if x<0 {
        return -reverseNum
    }
    else if (reverseNum > Int32.max) {
        return 0
    }
    else
    {
        return reverseNum
    }
  }
