//
//  SetOperation.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 23/6/21.
//

import Foundation

func checkSwiftSetOperation()  {
    let oddDigits: Set = [5, 1, 22, 25, 6, -1, 8, 10]
    let evenDigits: Set = [5, 1, 22, 22, 25, 6, -1, 8, 10]

    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

//    print(  oddDigits.union(evenDigits).sorted())
//
//
//    oddDigits.union(evenDigits).sorted()
    // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    print(oddDigits.intersection(evenDigits))
    // []
//    print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
//    // [1, 9]
//    print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

}
