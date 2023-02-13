//
//  HelloFreshTest.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 12/10/21.
//

import Foundation

func playlist(songs: [Int]) -> Int {
    var map = [Int: Int]()
    for t in songs {
        map[t, default: 0] += 1
    }
    
    var result = 0
    let sums = (1...500).map { $0 * 2 }.filter { $0 % 60 == 0 } // be careful of `*2`
    for t in songs {
        map[t, default: 0] -= 1
        for sum in sums {
            result += map[sum - t, default: 0]
        }
    }
    
    return result
}
