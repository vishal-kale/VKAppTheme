//
//  UIScreen+Ext.swift
//  VKAppTheme
//
//  Created by Vishal on 27/07/19.
//  Copyright © 2019 VishalKale. All rights reserved.
//

import Foundation
import UIKit

extension UIScreen {
    
    var isiPhoneXRResolution: Bool {
        return self.bounds.size.height == 896.0
    }
    var isiPhoneXResolution: Bool {
        return self.bounds.size.height == 812.0
    }
    var isiPhone8PlusResolution: Bool {
        return self.bounds.size.height == 736.0
    }
    var isiPhone6Resolution: Bool {
        return self.bounds.size.height == 667.0
    }
    var isCompactPhone: Bool {
        return self.bounds.size.width <= 320.0
    }
}
