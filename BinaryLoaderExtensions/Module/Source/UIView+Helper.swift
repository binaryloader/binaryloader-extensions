//
//  UIView+Helper.swift
//  Extensions
//
//  Created by binaryloader on 2020/10/11.
//

import UIKit

public extension UIView {
    
    func loadFromNib() {
        let bundle = type(of: self).bundle
        let nibName = type(of: self).className
        guard let nibs = bundle.loadNibNamed(nibName, owner: self) else { return }
        guard let nib = nibs.first as? UIView else { return }
        
        nib.frame = bounds
        nib.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(nib)
    }
    
    func subviews<T: UIView>(type: T.Type) -> [T] {
        return subviews.compactMap { $0 as? T }
    }
}
