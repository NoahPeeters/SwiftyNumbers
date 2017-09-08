//
//  Negatable.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public protocol Negatable {
    static prefix func -(value: Self) -> Self
}
