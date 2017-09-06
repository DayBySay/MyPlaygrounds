//: Playground - noun: a place where people can play

import UIKit

let dic: [String : Any] = ["key1" : "val1", "key2" : NSNull()]

let data = try! JSONSerialization.data(withJSONObject: dic, options: .prettyPrinted)

let string = String(data: data, encoding: .utf8)

let str = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
