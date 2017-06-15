//
//  UtiliFuncs.swift
//  EncryptedNote
//
//  Created by Cstars on 2017/6/15.
//  Copyright © 2017年 cstars. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Color
func colorFromRGB(r: UInt, g: UInt, b: UInt) -> UIColor {
    return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
}

func colorFromRGB(hex: UInt) -> UIColor {
    let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((hex & 0xFF00) >> 8 ) / 255.0
    let b = CGFloat(hex & 0xFF) / 255.0
    return UIColor(red: r, green: g, blue: b, alpha: 1.0)
}

func colorFromRGBA(hex: UInt, alpha: CGFloat) -> UIColor {
    let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((hex & 0xFF00) >> 8 ) / 255.0
    let b = CGFloat(hex & 0xFF) / 255.0
    return UIColor(red: r, green: g, blue: b, alpha: alpha)
}
