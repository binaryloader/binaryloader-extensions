//
//  NSMutableAttributedString+Helper.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
//

import UIKit

public extension NSMutableAttributedString {
    
    @discardableResult
    func set(kern: CGFloat, range: Range<String.Index>? = nil) -> Self {
        return set(attribute: .kern, value: kern, range: range)
    }
    
    @discardableResult
    func set(font: UIFont, range: Range<String.Index>? = nil) -> Self {
        return set(attribute: .font, value: font, range: range)
    }
    
    @discardableResult
    func set(fontColor: UIColor, range: Range<String.Index>? = nil) -> Self {
        return set(attribute: .foregroundColor, value: fontColor, range: range)
    }
    
    @discardableResult
    func set(paragraphStyle: NSParagraphStyle, range: Range<String.Index>? = nil) -> Self {
        return set(attribute: .paragraphStyle, value: paragraphStyle, range: range)
    }
    
    @discardableResult
    func set<Value>(attribute: NSAttributedString.Key, value: Value, range: Range<String.Index>? = nil) -> Self {
        let range = range ?? calibratedRange(attribute: attribute)
        addAttribute(attribute, value: value, range: NSRange(range, in: string))
        return self
    }
}

private extension NSMutableAttributedString {
    
    func calibratedRange(attribute: NSAttributedString.Key) -> Range<String.Index> {
        switch attribute {
        case .kern:
            return string.dropLast().range
        default:
            return string.range
        }
    }
}
