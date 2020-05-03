//
//  UIButton+Styling.swift
//  ReusableStylingDemo
//
//  Created by Deniz Gelir on 5/3/20.
//  Copyright © 2020 Hamurlabs. All rights reserved.
//

import UIKit

extension UIButton {
    
    struct Style {
        let backgroundColor: UIColor?
        let tintColor: UIColor
        let titleColor: UIColor
        let titleFont: UIFont
        let borderColor: UIColor?
        let borderWidth: CGFloat
        let cornerRadius: CGFloat
        
        init(backgroundColor: UIColor? = nil, tintColor: UIColor, titleColor: UIColor,
             titleFont: UIFont, borderColor: UIColor? = nil, borderWidth: CGFloat, cornerRadius: CGFloat) {
            self.backgroundColor = backgroundColor
            self.tintColor = tintColor
            self.titleColor = titleColor
            self.titleFont = titleFont
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.cornerRadius = cornerRadius
        }
    }
    
    func apply(style: Style) {
        backgroundColor = style.backgroundColor
        tintColor = style.tintColor
        titleLabel?.font = style.titleFont
        setTitleColor(style.titleColor, for: .normal)
        layer.borderColor = style.borderColor?.cgColor
        layer.borderWidth = style.borderWidth
        layer.cornerRadius = style.cornerRadius
    }
}

extension UIButton.Style {
    
    static var yellowButton: UIButton.Style {
        return UIButton.Style(backgroundColor:. yellow,
                              tintColor: .yellow,
                              titleColor: .black,
                              titleFont: UIFont.systemFont(ofSize: 14),
                              borderColor: .black,
                              borderWidth: 1.0,
                              cornerRadius: 8.0)
    }
    
}
