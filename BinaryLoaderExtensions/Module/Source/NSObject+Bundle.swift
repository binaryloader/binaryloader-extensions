//
//  NSObject+Bundle.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

import Foundation

public extension NSObject {
    
    class var bundle: Bundle {
        return Bundle(for: self)
    }
    
    var bundle: Bundle {
        return Bundle(for: type(of: self))
    }
}
