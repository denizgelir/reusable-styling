//
//  UILabel+Styling.swift
//  ReusableStylingDemo
//
//  Created by Deniz Gelir on 4/30/20.
//  Copyright © 2020 Hamurlabs. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    struct Style {
        let font: UIFont
        let textColor: UIColor
        let numberOfLines: Int
        let textAlignment: NSTextAlignment?
        let backgroundColor: UIColor?
        
        init(font: UIFont,numberOfLines: Int, textColor: UIColor,
             textAlignment: NSTextAlignment? = nil,backgroundColor: UIColor? = nil) {
            self.font = font
            self.textAlignment = textAlignment
            self.backgroundColor = backgroundColor
            self.numberOfLines = numberOfLines
            self.textColor = textColor
        }
    }
    
    func apply(style: Style) {
           font = style.font
           textAlignment = style.textAlignment ?? .center
           backgroundColor = style.backgroundColor
           numberOfLines = style.numberOfLines
           textColor = style.textColor
       }
    
}

extension UILabel.Style {
    
    static var redTitle: UILabel.Style {
        return UILabel.Style(font: UIFont.boldSystemFont(ofSize: 20),
                             numberOfLines: 0,
                             textColor: .red,
                             textAlignment: .center,
                             backgroundColor: .clear)
    }
    
}
