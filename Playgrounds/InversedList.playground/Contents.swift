//: Playground - noun: a place where people can play

import UIKit

//let list = Array(arrayLiteral: 1, 2, 3, 4, 5)
//
//print(list)
//
//var inversedList: Array<Int> = []
//
//for i in (0..<list.count).reversed() {
//    inversedList.append(list[i])
//}
//
//print(inversedList)
//
//let l = [Int]()
//l.first

var components = DateComponents()
components.year = 1988
components.month = 10
components.day = 18
//components.calendar =  Calendar(identifier: .japanese)

Calendar.current
Calendar.current.date(from: components)
Calendar(identifier: .gregorian).date(from: components)
Calendar(identifier: .japanese).date(from: components)

let date = Date()
Calendar(identifier: .gregorian).component(.year, from: date)
Calendar(identifier: .japanese).component(.year, from: date)
