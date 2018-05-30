//let string = "a"
//let character: Character = "a"
//
//type(of: string)
//type(of: character)
//
//
//let a = "12345"
//print(a.startIndex) // 0
//print(a.endIndex) // 20
//
//print(a[a.startIndex]) // 1
////print(a[a.endIndex]) // Fatal error: Can't form a Character from an empty String
//
//print(a[a.index(a.startIndex, offsetBy: 2)]) // 3
//print(a[a.index(a.endIndex, offsetBy: -2)]) // 4
import Foundation
//
//let options = String.CompareOptions.caseInsensitive
//let order = "a".compare("a", options:options)
//order == ComparisonResult.orderedDescending

//let range1 = 1..<10
//for i in range1 {
//    print(i) // 1...9まで出力
//}
//type(of: range1) // CountableRange<Int>.Type
//
//let range2 = 1...10
//for i in range2 {
//    print(i) // 1...10まで出力
//}
//type(of: range2) // CountableClosedRange<Int>.Type


//let optionalDouble = Optional(1.0)
//let optionalIsInfinite = optionalDouble?.isInfinite
//
//print(String(describing: optionalIsInfinite))

//let t: (String, String) = ("a", "e")
//
//print(t)
//
//let nt = (a: "aa", a2: "ee")
//print(nt.a)

//let a: Any = 1
//let isInt = a is Int

//let any = "abc" as Any // upcast
//let int "aaa" as Int // error

//let any = 1 as Any
//let int = any as? Int
//let string = any as? String

let any = 1 as Any
let int = any as! Int
//let string = any as! String




