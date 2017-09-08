//
//  Random.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

extension Int {
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}

extension Double {
    private static let arc4randomMaxValue: Double = Double(UInt32.max)
    
    private var arc4randomFactor: Double {
        return self / Double.arc4randomMaxValue
    }
    
    func random() -> Double {
        return Double(arc4random()) * arc4randomFactor
    }
}
