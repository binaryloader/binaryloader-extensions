//
//  UIView+Helper.swift
//  Extensions
//
//  Created by BinaryLoader on 10/11/20.
//

import UIKit

public extension UIView {

    func loadFromNib() {
        let selfType = type(of: self)
        let bundle = selfType.bundle
        let nibName = selfType.className

        guard let nibs = bundle.loadNibNamed(
            nibName,
            owner: self
        ) else { return }

        guard let nib = nibs.first as? UIView else { return }

        nib.frame = bounds
        nib.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(nib)
    }

    func subviews<T: UIView>(type: T.Type) -> [T] {
        return subviews.compactMap { $0 as? T }
    }
}
