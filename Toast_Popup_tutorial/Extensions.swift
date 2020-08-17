//
//  Extensions.swift
//  Toast_Popup_tutorial
//
//  Created by Jeff Jeong on 2020/08/17.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    init(hexcode: String) {
        let scanner = Scanner(string: hexcode)
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        
        self.init(red: Double(red) / 0xff, green: Double(green) / 0xff, blue: Double(blue) / 0xff)
        
    }
}
