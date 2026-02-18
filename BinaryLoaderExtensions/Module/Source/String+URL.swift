//
//  String+URL.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

import Foundation

public extension String {
    
    var toURL: URL? {
        return URL(string: self)
    }
    
    var toAPIURL: URL {
        return toURL ?? FileManager.default.temporaryDirectory
    }
}
