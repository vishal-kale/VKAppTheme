//
//  VKLabel.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

class VKLabel: UILabel {

    override var text: String? {
        didSet {
            updateAppearance()
            setNeedsDisplay()
        }
    }

    var appearance: VKAppearance? {
        didSet {
            updateAppearance()
        }
    }

    private func updateAppearance() {
        guard let text = self.text else { return }
        layer.masksToBounds = false
        attributedText = NSMutableAttributedString(string: text, attributes: appearance?.attributes)
    }
}
