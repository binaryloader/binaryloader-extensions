//
//  NSObject+ClassName.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

import Foundation

public extension NSObject {
    
    class var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return String(describing: type(of: self))
    }
}
