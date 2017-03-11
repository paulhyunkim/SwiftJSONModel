//
//  BasicTypeExtensions.swift
//  SwiftJSON
//
//  Created by Paul Kim on 3/10/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

import Foundation
import CoreLocation

extension Bool: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> Bool {
        let value = try json.getValueOfSingleKeyValuePairJSON()
        
        guard let boolValue = value as? Bool else {
            throw JSONDecodingError.typeMismatch(expected: "Bool")
        }
        
        return boolValue
    }
    
}

extension Int: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> Int {
        let value = try json.getValueOfSingleKeyValuePairJSON()
        
        guard let intValue = value as? Int else {
            throw JSONDecodingError.typeMismatch(expected: "Int")
        }
        return intValue
    }
    
}
extension Float: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> Float {
        let value = try json.getValueOfSingleKeyValuePairJSON()
        
        guard let floatValue = value as? Float else {
            throw JSONDecodingError.typeMismatch(expected: "Float")
        }
        return floatValue
    }
    
}

extension Double: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> Double {
        let value = try json.getValueOfSingleKeyValuePairJSON()
        
        guard let doubleValue = value as? Double else {
            throw JSONDecodingError.typeMismatch(expected: "Double")
        }
        return doubleValue
    }
    
}

extension String: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> String {
        let value = try json.getValueOfSingleKeyValuePairJSON()
        
        if value is Int || value is Float || value is Double {
            return "\(value)"
        }
        
        guard let stringValue = value as? String else {
            throw JSONDecodingError.typeMismatch(expected: "String")
        }
        return stringValue
    }
    
}


extension CLLocation {
    
    public convenience init(location: HHCLLocation) {
        self.init(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
    }
    
}
public final class HHCLLocation: CLLocation { }
extension HHCLLocation: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> HHCLLocation {
        guard let latitude: Double = try json.value(at: "Latitude"),
            let longitude: Double = try json.value(at: "Longitude") else {
                throw JSONDecodingError.typeMismatch(expected: "asdf")
        }
        
        let location = HHCLLocation(latitude: latitude, longitude: longitude)
        return location
    }
    
}

