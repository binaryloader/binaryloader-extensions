//
//  UIFont+Safe.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
//

import UIKit

public extension UIFont {
    
    static func safeFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        return font ?? systemFont(size: size)
    }
}

private extension UIFont {
    
    static func systemFont(size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }
}
