//
//  JSONDecodable.swift
//  SwiftJSONModel
//
//  Created by Paul Kim on 3/8/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

import Foundation
import CoreLocation

public typealias JSONType = [String: AnyObject]

public protocol JSONDecodable {
    
    static func decode(_ json: JSON) throws -> Self
    
}

