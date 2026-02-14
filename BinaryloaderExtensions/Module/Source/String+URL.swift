//
//  String+URL.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
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
