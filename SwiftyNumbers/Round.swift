//
//  Round.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation


public func round(_ value: Double, toDecimalPlaces decimalPlaces: Int) -> Double {
    let factor = pow(10, decimalPlaces)
    
    return (value * factor).rounded() / factor
}
