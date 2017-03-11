//
//  JSONDecodingError.swift
//  SwiftJSONModel
//
//  Created by Paul Kim on 3/7/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

public enum JSONDecodingError: Error {
    case typeMismatch(expected: String)
    case missingKey(key: String)
    case custom(message: String)
    case multiple(errors: [JSONDecodingError])
}

extension JSONDecodingError: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .typeMismatch(expected):
            return "TypeMismatch(Expected \(expected)"
        case let .missingKey(key):
            return "MissingKey(\(key))"
        case let .custom(message):
            return "Custom(\(message))"
        case let .multiple(errors):
            return "Multiple(\(errors.map { $0.description }.joined(separator: ", ")))"
        }
    }
}

