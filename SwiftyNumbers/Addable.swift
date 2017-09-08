//
//  Addable.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

/// A protocol for all types which can be added to itself.
protocol Addable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func +=(lhs: inout Self, rhs: Self)
}

extension Int:  Addable {}
extension Int8:  Addable {}
extension Int16: Addable {}
extension Int32: Addable {}
extension Int64: Addable {}

extension UInt:  Addable {}
extension UInt8:  Addable {}
extension UInt16: Addable {}
extension UInt32: Addable {}
extension UInt64: Addable {}

extension Float:  Addable {}
extension Double:  Addable {}
extension Float80:  Addable {}
