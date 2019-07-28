//
//  VKAppearance.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

struct VKAppearance {
    
    private var font: UIFont = .systemFont(ofSize: 12)
    private var lineHeight: CGFloat = 0.0
    private var kerning: CGFloat = 0.0
    private var alignment: NSTextAlignment = .left
    private var lineBreak: NSLineBreakMode = .byWordWrapping
    private var color: UIColor = .purple

    init(font: UIFont, lineHeight: CGFloat, kerning: CGFloat = 0.0, alignment: NSTextAlignment = .left, lineBreak: NSLineBreakMode = .byWordWrapping, color: UIColor = .purple) {
        self.font = font
        self.lineHeight = lineHeight
        self.kerning = kerning
        self.alignment = alignment
        self.lineBreak = lineBreak
        self.color = color
    }
}

enum AppearanceKey {
    case fontSize
    case lineHeight
    case kerning
    case alignment
    case lineBreak
    case color
}

extension VKAppearance {

    var attributes: [NSAttributedString.Key: Any] {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        paragraphStyle.lineSpacing = 0.0
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        paragraphStyle.lineBreakMode = lineBreak

        let attributes: [NSAttributedString.Key: Any] = [ NSAttributedString.Key.foregroundColor: color,
                                                         NSAttributedString.Key.kern: kerning,
                                                         NSAttributedString.Key.font: font,
                                                         NSAttributedString.Key.paragraphStyle: paragraphStyle ]

        return attributes
    }

    func resizeIfCompactDevice() -> VKAppearance {

        if UIScreen.main.isCompactPhone {
            if let compactFont: UIFont = UIFont(name: self.font.fontName, size: self.font.pointSize - 4) {
                let compactLineHeight: CGFloat = self.lineHeight - 4
                let compactKerning: CGFloat = 0.0

                return VKAppearance(font: compactFont, lineHeight: compactLineHeight, kerning: compactKerning, alignment: self.alignment, lineBreak: self.lineBreak, color: self.color)
            }
        }
        return self
    }

    func align(_ alignment: NSTextAlignment) -> VKAppearance {
        var currentAppearance = self
        currentAppearance.alignment = alignment
        return currentAppearance
    }

    func color(_ color: UIColor) -> VKAppearance {
        var currentAppearance = self
        currentAppearance.color = color
        return currentAppearance
    }

    func kern(_ kerning: CGFloat) -> VKAppearance {
        var currentAppearance = self
        currentAppearance.kerning = kerning
        return currentAppearance
    }

    func lineHeight(_ lineHeight: CGFloat) -> VKAppearance {
        var currentAppearance = self
        currentAppearance.lineHeight = lineHeight
        return currentAppearance
    }

    func fontSize(_ fontSize: CGFloat) -> VKAppearance {
        var currentAppearance = self
        if let font = UIFont(name: self.font.fontName, size: fontSize) {
            currentAppearance.font = font
        }
        return currentAppearance
    }

    func lineBreak(_ lineBreak: NSLineBreakMode) -> VKAppearance {
        var currentAppearance = self
        currentAppearance.lineBreak = lineBreak
        return currentAppearance
    }
}
