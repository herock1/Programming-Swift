//
//  Dictionary.swift
//  Swift_Test_Programming
//
//  Created by Herock Hasan on 23/6/21.
//

import Foundation

func checkSwiftDictionary()  {
    
    var namesOfIntegers: [Int: String] = [:]
    namesOfIntegers[16] = "sixteen"
    
   
    
    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    
//    if airports.isEmpty {
//        print("The airports dictionary is empty.")
//    } else {
//        print("The airports dictionary isn't empty.")
//    }

    if let removedValue = airports.removeValue(forKey: "DUB") {
        print("The removed airport's name is \(removedValue).")
    } else {
        print("The airports dictionary doesn't contain a value for DUB.")
    }
    // Prints "The removed airport's name is Dublin Airport."

    
    for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
    }

    for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
    }
    // Airport code: LHR
    // Airport code: YYZ

    for airportName in airports.values {
        print("Airport name: \(airportName)")
    }
    //
    
}
