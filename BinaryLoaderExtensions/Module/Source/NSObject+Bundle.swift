//
//  NSObject+Bundle.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
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
