//
//  ValidPalindrome.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 9/9/21.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.replacingOccurrences(of: " ", with: "").components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased())
        for i in 0..<chars.count/2 {
            if chars[i] != chars[chars.count - 1 - i] {
                return false
            }
        }
        return true
    }


/*
 
 func isPalindrome(_ s: String) -> Bool {
       
       let chars = Array(s.replacingOccurrences(of: " ", with: "").components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased())
       
       if(String(chars) ==  String(chars.reversed()))
       {
           return true
       }
       else
       {
           return false
       }
   }
 
 */
