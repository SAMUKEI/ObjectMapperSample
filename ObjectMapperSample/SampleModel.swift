//
//  SampleModel.swift
//  ObjectMapperSample
//
//  Created by Yuta Fujita on 2016/09/28.
//  Copyright © 2016年 Yuta Fujita. All rights reserved.
//

import Foundation
import ObjectMapper

class SampleModel: NSObject, Mappable {
    var username: String?
    var age: Int?
    var weight: Double!
    var array: [AnyObject]?
    var dictionary: [String : AnyObject] = [:]
    var birthday: NSDate?
    
    override init() {
        super.init()
    }

    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        username    <- map["username"]
        age         <- map["age"]
        weight      <- map["weight"]
        array       <- map["arr"]
        dictionary  <- map["dict"]
    }
}
