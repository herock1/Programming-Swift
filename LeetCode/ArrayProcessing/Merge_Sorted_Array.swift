//
//  Merge_Sorted_Array.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 19/6/21.
//

import Foundation
var merge_nums1 = [1,7,8,9,0,0,0]
let merge_m = 4
let merge_nums2 = [2,5,6]
let merge_n = 3

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
       
  
        var m_new = m - 1
        var n_new = n - 1
        var index = m+n - 1
        
    while (index >= 0 || n_new>=0) {
        
        if (n_new < 0 || (m_new >= 0 && nums1[m_new]>=nums2[n_new]))
        {
            nums1[index] = nums1[m_new]
            m_new = m_new - 1
            index = index - 1 
            print(nums1)
            print(n_new)
            print(m_new)
        }
        
        else
        {
            nums1[index] = nums2[n_new]
            n_new = n_new - 1
            index = index - 1
            print("Greater Than current Array index")
            print(nums1)
            print(n_new)
            print(m_new)

        }
        }
//    let outputArraySize : Int = m+n
//    let removeToIndex = nums1.count-outputArraySize-1;
//        nums1.removeSubrange(0..<removeToIndex )
   }
