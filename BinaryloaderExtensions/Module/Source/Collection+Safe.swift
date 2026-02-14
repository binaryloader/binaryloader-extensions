//
//  Collection+Safe.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
//

public extension Collection {
    
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
