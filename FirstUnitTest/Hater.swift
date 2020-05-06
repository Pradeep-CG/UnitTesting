//
//  Hater.swift
//  FirstUnitTest
//
//  Created by Pradeep on 05/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import Foundation

struct Hater {
    
    var hating = false
    
    mutating func hadABadDay(){
        hating = true
    }
    
    mutating func hadAGoodDay(){
        hating = false
    }
}

struct Person {
    
    var firstName:String
    var secondName:String
    
    func completeName() -> String {
        return firstName + secondName
    }
}
