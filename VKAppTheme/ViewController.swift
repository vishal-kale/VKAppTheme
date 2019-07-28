//
//  ViewController.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // VKTheme Label
    let abcLabel = VKLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        addLabel()
        setAppearance()
    }

    private func addLabel() {
        abcLabel.text = "Hello World!"
        view.addSubview(abcLabel)
        abcLabel.translatesAutoresizingMaskIntoConstraints = false
        abcLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        abcLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        abcLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
    }

}

// Applying Theme
extension ViewController: SetAppearance {
    func setAppearance() {
        self.abcLabel.appearance = vkTheme.headerBold
    }
}
