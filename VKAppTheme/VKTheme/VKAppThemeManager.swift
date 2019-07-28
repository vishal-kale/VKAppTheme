//
//  VKAppThemeManager.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

protocol ThemeCategory {
    var headerRegular: VKAppearance { get }
    var headerItalic: VKAppearance { get }
    var headerBold: VKAppearance { get }
    var headerExtraBold: VKAppearance { get }
    var titleRegular: VKAppearance { get }
    var titleItalic: VKAppearance { get }
    var titleBold: VKAppearance { get }
    var titleExtraBold: VKAppearance { get }
    var subtitleRegular: VKAppearance { get }
    var subtitleItalic: VKAppearance { get }
    var subtitleBold: VKAppearance { get }
    var subtitleExtraBold: VKAppearance { get }
    var bodyRegular: VKAppearance { get }
    var bodyItalic: VKAppearance { get }
    var bodyBold: VKAppearance { get }
    var bodyExtraBold: VKAppearance { get }

    var primary: UIColor { get }
    var secondary: UIColor { get }
    var primaryText: UIColor { get }
    var secondaryText: UIColor { get }
    var highlight: UIColor { get }
    var cancel: UIColor { get }
    var shadow: UIColor { get }

    var extraLargeRowHeight: CGFloat { get }
    var largeRowHeight: CGFloat { get }
    var mediumRowHeight: CGFloat { get }
    var smallRowHeight: CGFloat { get }
    var actionButtonHeight: CGFloat { get }
}

final class VKAppThemeManager {

    static let shared = VKAppThemeManager()
    let currentTheme: ThemeCategory = CurrentVKAppTheme()
}

protocol SetAppearance {
    var vkTheme: ThemeCategory { get }
    func setAppearance()
}

extension SetAppearance {
    var vkTheme: ThemeCategory {
        return VKAppThemeManager.shared.currentTheme
    }
}
