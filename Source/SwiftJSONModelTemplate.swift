//
//  SwiftJSONModelTemplate.swift
//  SwiftJSONModel
//
//  Created by Paul Kim on 3/10/17.
//  Copyright © 2017 Mobileforming, LLC. All rights reserved.
//

import Foundation

@objc public final class ClassName: SwiftJSONModel {
    
    // MARK: - Required Properties
    /************************************/
    /*---------- SAMPLE CODE -------------
     var someString: String
     var someInts: [Int]
     -------------------------------------*/
    
    // MARK: - Optional Properties
    /************************************/
    /*---------- SAMPLE CODE -------------
     var someOptionalBool: Bool?
     var someOptionalObject: SomeObject?
     var someOptionalArray: [SomeObject]?
     -------------------------------------*/
    
    // MARK: - Derived Properties
    /************************************/
    /*---------- SAMPLE CODE -------------
     var someOptionalObject: SomeObject?
     -------------------------------------*/
    
    // MARK: - Initializers
    /************************************/
    /*---------- SAMPLE CODE -------------
     init(someString: String, someInts: [Int]) {
         self.someString = someString
         self.someInts = someInts
     }
     -------------------------------------*/
    
}


/************************************/
// MARK: - JSONDecodable
/************************************/

extension ClassName: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> ClassName {
        let obj = ClassName()
        return obj
        /*---------- SAMPLE CODE -------------
         // NOTE: there's a difference between value and values
         let obj = MyClass(
             someString:   try json.value(at: "SomeString")
             someInts:    try json.values(at: "SomeInts")
         )
         obj.someOptionalBool =     try json.value(at: "SomeOptionalBool")
         obj.someOptionalObject =   try json.value(at: "SomeObject")
         obj.someOptionalArray =   try json.values(at: "SomeOptionalArray")
         return obj
         -------------------------------------*/
    }
    
}


/************************************/
// MARK: - NSCopying
/************************************/

extension ClassName: NSCopying {
    
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = ClassName()
        return copy
        /*---------- SAMPLE CODE -------------
         // NOTE: use clone() on reference types or on arrays that contain reference types
         //       clone will implicitly return the correct type so you don't need to cast
         let copy = MyClass(
             someString: self.someString
             someInts: self.someInts
         )
         copy.someOptionalBool = self.someOptionalBool
         copy.someOptionalObject = self.someOptionalObject.clone()
         copy.someOptionalArray = self.someOptionalArray.clone()
         return copy
         -------------------------------------*/
    }
    
}


/************************************/
// MARK: - Helpers
/************************************/

extension ClassName {
    
}

