//
//  LongestCommonPrefix.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 1/9/21.
//

import Foundation
/*
func longestCommonPrefix(_ strs: [String]) -> String {
    
    if strs.isEmpty { return "" }
      if strs.count == 1 { return strs[0] }

      let strs = strs.sorted()
        print(Array(zip(strs.first!, strs.last!)))
    
      var output = ""
      for (char1, char2) in zip(strs.first!, strs.last!) {
        print(char1,char2)
          if char1 == char2 {
              output += String(char1)
          } else {
              break
          }
      }
      return output
  }

*/

func longestCommonPrefix(_ strs: [String]) -> String {
    
        if strs.isEmpty { return ""; }
        var comPrefix = "";
        var prefix = "";
        for char in strs[0] {
            prefix.append(char);
            for str in strs {
                if !str.hasPrefix(prefix) {return comPrefix;}
                
            }
            comPrefix = prefix;
        }
        return comPrefix;
    }

/*
func twoStrings(s1: String, s2: String) -> String {
    // Write your code here
      var output = "NO"
    let s1Set = Set(Array(s1))
    let s2Set =  Set(Array(s2))
        print(s1Set)
        print(s2Set)
    
    let newSet =   s1Set.intersection(s2Set)
    
    if newSet.count>0   {
        return "YES"
    }
    else
    {
        return "NO"
    }
      for s1char in s1
      {
          for s2char in s2
          {
              if s1char == s1char
              {
                  output = "YES"
                  break
              }
              
          }
      }
      return output
}
*/
