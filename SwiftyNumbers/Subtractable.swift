//
//  Subtractable.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

/// A protocol for all types which can be subtracted from itself.
protocol Subtractable {
    static func -(lhs: Self, rhs: Self) -> Self
    static func -=(lhs: inout Self, rhs: Self)
}

extension Int:  Subtractable {}
extension Int8:  Subtractable {}
extension Int16: Subtractable {}
extension Int32: Subtractable {}
extension Int64: Subtractable {}

extension UInt:  Subtractable {}
extension UInt8:  Subtractable {}
extension UInt16: Subtractable {}
extension UInt32: Subtractable {}
extension UInt64: Subtractable {}

extension Float:  Subtractable {}
extension Double:  Subtractable {}
extension Float80:  Subtractable {}
