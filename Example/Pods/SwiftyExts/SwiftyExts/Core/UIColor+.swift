//
//  UIColor+.swift
//  SwiftyExts
//
//  Created by LDD on 2019/10/7.
//

#if canImport(UIKit)
import UIKit
import CoreGraphics

public extension UIColor {

    convenience init(hexRGB: UInt, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hexRGB & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hexRGB & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hexRGB & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }

    convenience init?(hexRGBString: String?, alpha: CGFloat = 1.0) {
        guard let intString = hexRGBString?.replacingOccurrences(of: "#", with: "") else { return nil }
        guard let hex = UInt(intString, radix: 16) else {
            return nil
        }
        self.init(hexRGB: hex, alpha: alpha)
    }
    
    #if canImport(CoreImage)
    func ciColor() -> CIColor {
        return ciColor
    }
    #endif

    func cgColor() -> CGColor {
        return cgColor
    }
}
#endif
