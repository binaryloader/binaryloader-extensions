//
//  Collection+Safe.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

public extension Collection {
    
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
