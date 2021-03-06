//
//  CIImage+.swift
//  SwiftyExts
//
//  Created by LDD on 2018/3/7.
//

#if canImport(CoreImage)
import CoreImage

#if canImport(UIKit)
import UIKit
#endif

public extension CIImage {

    func cgImage() -> CGImage? {
        if #available(iOS 10, macOS 10.12, tvOS 10, watchOS 2, *) {
            if let cgImage = cgImage {
                return cgImage
            }
        }
        return CIContext().createCGImage(self, from: extent)
    }

    #if canImport(UIKit)
    func uiImage() -> UIImage {
        return UIImage(ciImage: self)
    }
    #endif
}
#endif
