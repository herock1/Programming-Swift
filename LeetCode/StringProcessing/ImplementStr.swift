//
//  ImplementStr.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 8/9/21.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
       
    guard !needle.isEmpty else { return 0 }
     guard haystack.count >= needle.count else { return -1 }
    
    let needleArray = Array(needle)
    
    var start = 0
    
    if let index  =   haystack.index(of: needleArray[0]) {
        start = index.utf16Offset(in: haystack)
        print(start)
    }
   

        for i in start..<haystack.count {
        let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
           guard let endIndex = haystack.index(startIndex, offsetBy: needle.count, limitedBy: haystack.endIndex)
                else
                {
                    return -1
                }
            
            if haystack[startIndex..<endIndex] == needle {
                return i
            }
        }
 
    return -1
    
}


/*
 func strStr(_ haystack: String, _ needle: String) -> Int {
     guard needle.isEmpty == false else { return 0 }

     for (offset, _) in haystack.enumerated() {
         let startIndex = haystack.index(haystack.startIndex, offsetBy: offset)
         print(offset)
         print(startIndex)

         guard let endIndex = haystack.index(startIndex, offsetBy: needle.count, limitedBy: haystack.endIndex)
         else { return -1 }

         if haystack[startIndex..<endIndex] == needle {
             return offset
         }
     }

     return -1
 }
 */
