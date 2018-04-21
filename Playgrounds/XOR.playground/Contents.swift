//: Playground - noun: a place where people can play

import UIKit

//let x: Int8 = 0b00000010
//let y: Int8 = 0b00000000
//let z: Int8 = -1
//
//let and = x & y
//let or = x | y
//let xor = x ^ y
//let shift = z << 7

let plus: Int8 = 123
let minus: Int8 = -123

let target = minus
//let target = plus

// 7bit 右シフトして符号ビットで埋まった値を取得する（0 or -1になる）
let s = target >> 7
// 右シフトした結果とXOR
let i = target ^ s
// 右シフトした結果をマイナス
let abs = i - s // 123
