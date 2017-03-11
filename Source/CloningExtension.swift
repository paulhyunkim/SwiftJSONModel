//
//  CloningExtension.swift
//  SwiftJSONModel
//
//  Created by Paul Kim on 3/8/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

import Foundation

public extension Array where Element: NSCopying {
    
    func clone() -> Array<Element> {
        var copiedArray = Array<Element>()
        for element in self {
            let copiedElement = element.clone()
            copiedArray.append(copiedElement)
        }
        return copiedArray
        
    }
}

public extension NSCopying {
    
    func clone() -> Self {
        return self.copy() as! Self
    }
    
}

