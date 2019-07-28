//
//  UIFont+Ext.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    private class var regularFont: String {
        return "Raleway-Regular"
    }
    private class var boldFont: String {
        return "Raleway-Bold"
    }
    private class var extraBoldFont: String {
        return "Raleway-ExtraBold"
    }
    private class var italicFont: String {
        return "Raleway-Italic"
    }
    
    class func regularFont(ofSize fontSize: CGFloat) -> UIFont {
        if let font = UIFont(name: UIFont.regularFont, size: fontSize) {
            return font
        }
        return UIFont.systemFont(ofSize: fontSize)
    }

    class func boldFont(ofSize fontSize: CGFloat) -> UIFont {
        if let font = UIFont(name: UIFont.boldFont, size: fontSize) {
            return font
        }
        return UIFont.boldSystemFont(ofSize: fontSize)
    }

    class func extraBoldFont(ofSize fontSize: CGFloat) -> UIFont {
        if let font = UIFont(name: UIFont.extraBoldFont, size: fontSize) {
            return font
        }
        return UIFont.boldSystemFont(ofSize: fontSize)
    }

    class func italicFont(ofSize fontSize: CGFloat) -> UIFont {
        if let font = UIFont(name: UIFont.italicFont, size: fontSize) {
            return font
        }
        return UIFont.systemFont(ofSize: fontSize)
    }
}
