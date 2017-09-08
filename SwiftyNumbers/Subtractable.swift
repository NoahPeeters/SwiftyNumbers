//
//  Subtractable.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

/// A protocol for all types which can be subtracted from itself.
public protocol Subtractable {
    static func -(lhs: Self, rhs: Self) -> Self
    static func -=(lhs: inout Self, rhs: Self)
}

public protocol NumberSubtractable: Subtractable, ExpressibleByIntegerLiteral {}

extension Int:  NumberSubtractable {}
extension Int8:  NumberSubtractable {}
extension Int16: NumberSubtractable {}
extension Int32: NumberSubtractable {}
extension Int64: NumberSubtractable {}

extension UInt:  NumberSubtractable {}
extension UInt8:  NumberSubtractable {}
extension UInt16: NumberSubtractable {}
extension UInt32: NumberSubtractable {}
extension UInt64: NumberSubtractable {}

extension Float:  NumberSubtractable {}
extension Double:  NumberSubtractable {}
extension Float80:  NumberSubtractable {}
