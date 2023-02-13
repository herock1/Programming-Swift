//
//  ValidParenthesis.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 1/9/21.
//

import Foundation

func isValidpar( s : String) -> Bool {
    
    var charArray = [Character]()
    for inputStr in s
    {
        print(inputStr)

        if (inputStr == "(" || inputStr == "{" || inputStr == "["){
            charArray.append(inputStr)
        }
        else if (inputStr == ")" && charArray.count > 0 && charArray.last == "("){
            charArray.removeLast()
        }
        
        else if (inputStr == "}" && charArray.count > 0 && charArray.last == "{"){
            charArray.removeLast()
        }
        else if (inputStr == "]" && charArray.count > 0 && charArray.last == "["){
            charArray.removeLast()
        }
        else
        {
            return false
        }

    }
    
    return charArray.isEmpty
    
  
}
