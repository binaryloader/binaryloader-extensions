//
//  StringProtocol+Range.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

public extension StringProtocol {
    
    var range: Range<String.Index> {
        return startIndex..<endIndex
    }
}
