//
//  Power.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public func pow(_ base: Double, _ exponent: Int) -> Double {
    return pow(base, Double(exponent))
}

public func pow(_ base: Int, _ exponent: Double) -> Double {
    return pow(Double(base), exponent)
}

public func pow(_ base: Int, _ exponent: Int) -> Double {
    return pow(Double(base), Double(exponent))
}
