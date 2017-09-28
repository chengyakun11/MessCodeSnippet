//
//  File.swift
//  MessCodeSnippet
//
//  Created by zhangxun on 2017/9/28.
//  Copyright © 2017年 fudianshu. All rights reserved.
//

import Foundation


var str = "Hello, playground"

func isNotNull(object:AnyObject?) -> Bool {
    guard let object = object else {
        return false
    }
    return (isNotNSNull(object: object) && isNotStringNull(object: object))
}

func isNotNSNull(object:AnyObject) -> Bool {
    return object.classForCoder != NSNull.classForCoder()
}

func isNotStringNull(object:AnyObject) -> Bool {
    if let object = object as? String, object.uppercased() == "NULL" {
        return false
    }
    return true
}

var dict = NSDictionary()
//if dict["213"] != nil {
//    //have a num
//    print("12312")
//} else {
//    //no num
//    print("2222")
//}

