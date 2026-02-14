//
//  NSObject+ClassName.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
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
