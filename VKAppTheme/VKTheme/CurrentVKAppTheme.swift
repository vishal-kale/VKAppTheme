//
//  CurrentVKAppTheme.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

class CurrentVKAppTheme: ThemeCategory {

    var headerRegular: VKAppearance {
        return VKAppearance(font: UIFont.regularFont(ofSize: 24), lineHeight: 28).resizeIfCompactDevice()
    }
    var headerItalic: VKAppearance {
        return VKAppearance(font: UIFont.italicFont(ofSize: 24), lineHeight: 28).resizeIfCompactDevice()
    }
    var headerBold: VKAppearance {
        return VKAppearance(font: UIFont.boldFont(ofSize: 24), lineHeight: 28).resizeIfCompactDevice()
    }
    var headerExtraBold: VKAppearance {
        return VKAppearance(font: UIFont.extraBoldFont(ofSize: 24), lineHeight: 28).resizeIfCompactDevice()
    }
    var titleRegular: VKAppearance {
        return VKAppearance(font: UIFont.regularFont(ofSize: 20), lineHeight: 24).resizeIfCompactDevice()
    }
    var titleItalic: VKAppearance {
        return VKAppearance(font: UIFont.italicFont(ofSize: 20), lineHeight: 24).resizeIfCompactDevice()
    }
    var titleBold: VKAppearance {
        return VKAppearance(font: UIFont.boldFont(ofSize: 20), lineHeight: 24).resizeIfCompactDevice()
    }
    var titleExtraBold: VKAppearance {
        return VKAppearance(font: UIFont.extraBoldFont(ofSize: 20), lineHeight: 24).resizeIfCompactDevice()
    }
    var subtitleRegular: VKAppearance {
        return VKAppearance(font: UIFont.regularFont(ofSize: 16), lineHeight: 20).resizeIfCompactDevice()
    }
    var subtitleItalic: VKAppearance {
        return VKAppearance(font: UIFont.italicFont(ofSize: 16), lineHeight: 20).resizeIfCompactDevice()
    }
    var subtitleBold: VKAppearance {
        return VKAppearance(font: UIFont.boldFont(ofSize: 16), lineHeight: 20).resizeIfCompactDevice()
    }
    var subtitleExtraBold: VKAppearance {
        return VKAppearance(font: UIFont.extraBoldFont(ofSize: 16), lineHeight: 20).resizeIfCompactDevice()
    }
    var bodyRegular: VKAppearance {
        return VKAppearance(font: UIFont.regularFont(ofSize: 14), lineHeight: 18).resizeIfCompactDevice()
    }
    var bodyItalic: VKAppearance {
        return VKAppearance(font: UIFont.italicFont(ofSize: 14), lineHeight: 18).resizeIfCompactDevice()
    }
    var bodyBold: VKAppearance {
        return VKAppearance(font: UIFont.boldFont(ofSize: 14), lineHeight: 18).resizeIfCompactDevice()
    }
    var bodyExtraBold: VKAppearance {
        return VKAppearance(font: UIFont.extraBoldFont(ofSize: 14), lineHeight: 18).resizeIfCompactDevice()
    }

    var primary: UIColor { return UIColor(hex: "#FF00B894") }
    var secondary: UIColor { return UIColor(hex: "#FF55EFC4") }
    var primaryText: UIColor { return UIColor(hex: "#FF2D3436") }
    var secondaryText: UIColor { return UIColor(hex: "#FF636E72") }
    var highlight: UIColor { return UIColor(hex: "#FF562C25") }
    var cancel: UIColor { return UIColor(hex: "#FFCCE8DA") }
    var shadow: UIColor { return UIColor(hex: "#FF62D1A1") }

    var extraLargeRowHeight: CGFloat { return 120.0 }
    var largeRowHeight: CGFloat { return 90.0 }
    var mediumRowHeight: CGFloat { return 60.0 }
    var smallRowHeight: CGFloat { return 40.0 }
    var actionButtonHeight: CGFloat { return 60.0 }
}
