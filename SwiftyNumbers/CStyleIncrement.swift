//
//  CStyleIncrement.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

prefix operator ++
postfix operator ++

prefix func ++(value: inout Int) -> Int {
    value = value + 1
    return value
}

postfix func ++(value: inout Int) -> Int {
    let oldValue = value
    value = value + 1
    return oldValue
}
