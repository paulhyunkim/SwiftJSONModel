//
//  JSON.swift
//  SwiftJSONModel
//
//  Created by Paul Kim on 3/8/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

import Foundation

@objc public class JSON: NSObject {
    
    let dictionary: JSONType
    
    public init(dictionary: JSONType) {
        self.dictionary = dictionary
    }
    
    // MARK: - Public Methods
    /************************************/
    public func value<T: JSONDecodable>(at key: String) throws -> T {
        let json = try getJSON(at: key)
        return try decodeJSON(json)
    }
    
    public func value<T: JSONDecodable>(at key: String) throws -> T? {
        guard let json = try? getJSON(at: key) else { return nil }
        return try decodeJSON(json) as T
    }
    
    public func values<T: JSONDecodable>(at key: String) throws -> [T] {
        let jsons = try getJSONs(at: key)
        return try decodeJSONs(jsons)
    }
    
    public func values<T: JSONDecodable>(at key: String) throws -> [T]? {
        guard let jsons = try? getJSONs(at: key) else { return nil }
        return try decodeJSONs(jsons) as [T]
    }
    
    /* For accessing the value of self's dictionary when it contains a single key-value pair */
    public func getValueOfSingleKeyValuePairJSON() throws -> AnyObject {
        guard let value = self.dictionary.values.first else {
            throw JSONDecodingError.custom(message: "JSON is empty")
        }
        guard self.dictionary.values.count == 1 else {
            throw JSONDecodingError.custom(message: "JSON contains more than one key-value pair")
        }
        return value
    }
    
    // MARK: - Private Methods
    /************************************/
    private func getJSON(at key: String) throws -> JSONType {
        guard let object = self.dictionary[key] else {
            throw JSONDecodingError.missingKey(key: key)
        }
        return castToJSONType(object, key: key)
    }
    
    private func getJSONs(at key: String) throws -> [JSONType] {
        guard let objects = self.dictionary[key] as? [AnyObject] else {
            throw JSONDecodingError.missingKey(key: key)
        }
        return objects.map({ castToJSONType($0, key: key) })
    }
    
    private func decodeJSON<T: JSONDecodable>(_ json: JSONType) throws -> T {
        return try T.decode(JSON(dictionary: json))
    }
    
    private func decodeJSONs<T: JSONDecodable>(_ jsons: [JSONType]) throws -> [T] {
        return try jsons.map({ try T.decode(JSON(dictionary: $0)) })
    }
    
    private func castToJSONType(_ object: AnyObject, key: String) -> JSONType {
        if let object = object as? JSONType {
            return object
        } else {
            return [key: object]
        }
    }
    
}

