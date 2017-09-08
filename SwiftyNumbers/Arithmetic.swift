//
//  Arithmetic.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

/// A protocol for all types which can be added to itself.
public protocol Addable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func +=(lhs: inout Self, rhs: Self)
}

public protocol NumberAddable: Addable, ExpressibleByIntegerLiteral {}

extension Int:  NumberAddable {}
extension Int8:  NumberAddable {}
extension Int16: NumberAddable {}
extension Int32: NumberAddable {}
extension Int64: NumberAddable {}

extension UInt:  NumberAddable {}
extension UInt8:  NumberAddable {}
extension UInt16: NumberAddable {}
extension UInt32: NumberAddable {}
extension UInt64: NumberAddable {}

extension Float:  NumberAddable {}
extension Double:  NumberAddable {}
extension Float80:  NumberAddable {}



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


public protocol Multiplicable {
    static func *(lhs: Self, rhs: Self) -> Self
    static func *=(lhs: inout Self, rhs: Self)
}

public protocol Divideable {
    static func /(lhs: Self, rhs: Self) -> Self
    static func /=(lhs: inout Self, rhs: Self)
}
