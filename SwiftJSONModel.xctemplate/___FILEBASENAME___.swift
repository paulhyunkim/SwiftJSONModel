//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

@objc public final class ___FILEBASENAMEASIDENTIFIER___: SwiftJSONModel {
    
    // MARK: - Required Properties
    /************************************/
    <#Add required properties here#>
    /*---------- SAMPLE CODE -------------
    var someString: String
    var someInts: [Int]
    -------------------------------------*/
    
    // MARK: - Optional Properties
    /************************************/
    <#Add optional properties here#>
    /*---------- SAMPLE CODE -------------
    var someOptionalBool: Bool?
    var someOptionalObject: SomeObject?
    var someOptionalArray: [SomeObject]?
    -------------------------------------*/
    
    // MARK: - Derived Properties
    /************************************/
    <#Add optional properties here#>
    /*---------- SAMPLE CODE -------------
    var someOptionalObject: SomeObject?
    -------------------------------------*/
    
    // MARK: - Initializers
    /************************************/
    <#Add initializers here#>
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

extension ___FILEBASENAMEASIDENTIFIER___: JSONDecodable {
    
    public static func decode(_ json: JSON) throws -> ___FILEBASENAMEASIDENTIFIER___ {
        let obj = ___FILEBASENAMEASIDENTIFIER___()
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

extension ___FILEBASENAMEASIDENTIFIER___: NSCopying {
    
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = ___FILEBASENAMEASIDENTIFIER___()
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

extension ___FILEBASENAMEASIDENTIFIER___ {
    
}

