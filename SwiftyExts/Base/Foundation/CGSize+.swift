//
//  CGSize+.swift
//  SwiftyExts
//
//  Created by LDD on 2018/3/7.
//

#if os(iOS)
import UIKit

public extension CGSize {
    
    static var screen: CGSize {
        return UIScreen.main.bounds.size
    }
}
#endif
