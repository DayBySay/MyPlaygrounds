//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//String(822149121, radix: 16)
//String(822149121, radix: 2)
//
//"type: 11, service: 0001, category: 0000 0001, code: 0000 0000 0000 0001"
//
//String(285605994, radix: 16)
//String(285605994, radix: 2)
//"type: 1, service: 0001, category:0000 0110, code: 0000 0000 0110 1010"
//
//struct VliveErrorType: OptionSet {
//    let rawValue: Int32
//    static let oneDigit =  VliveErrorType(rawValue: 1 << 28)
//    static let twoDigit =  VliveErrorType(rawValue: 1 << 29)
//    static let fourDigit =  VliveErrorType(rawValue: 1 << 30)
//    static let eightDigit =  VliveErrorType(rawValue: 1 << 31)
//
//    static let ServerError: VliveErrorType = [.oneDigit]
//    static let ServerErrorUnrecoverable : VliveErrorType = [.twoDigit]
//    static let ClientError: VliveErrorType = [.oneDigit, .twoDigit]
//    static let ClientErrorUnrecoverable: VliveErrorType = [.fourDigit]
//    static let AuthError: VliveErrorType = [.fourDigit, .oneDigit]
//    static let LimitedAccess: VliveErrorType = [.fourDigit, .twoDigit]
//    static let RequestUpdate: VliveErrorType = [.fourDigit, .twoDigit, .oneDigit]
//    static let ServiceUnavailabe: VliveErrorType = [.eightDigit]
//}
//
//
//let options = VliveErrorType(rawValue: 822149121)
//
//switch options {
//case VliveErrorType.ServerError:
//    print("hoge")
//case VliveErrorType.ClientError:
//    print("fuga")
//default:
//    break
//}
//
//if options.contains(VliveErrorType.oneDigit) {
//    print("one")
//}
//
//if options.contains(VliveErrorType.twoDigit) {
//    print("two")
//}
//
//if options.contains(VliveErrorType.ServerError) {
//    print("server")
//}
//
//if options.contains(VliveErrorType.ClientError) {
//    print("client")
//}

//struct ErrorResponsePayload {
//    let message: String
//    let detailedError: String
//    let statusCode: Int
//    let errorCode: UInt32
//}
//
//struct VliveError: Error {
//    enum ErrorType {
//        case server
//        case client
//        case gamelib
//    }
//
//    let payload: ErrorResponsePayload
//    let type: ErrorType
//}
//
//let error = VliveError(payload: ErrorResponsePayload(message: "", detailedError: "", statusCode: 200, errorCode: 822149121), type: .server) as! Error
//
//switch error {
//case is VliveError:
//    let e = error as! VliveError
//    switch e.type {
//    case VliveError.ErrorType.server:
//        e.payload
//    default:
//        break
//    }
//    print(error)
//default:
//    print("defo")
//}

enum MyError: Error {
    case server(Server)
    case client(Client)
    case undefined
}
extension MyError {
    var errorCode: Int {
        return 100
    }
}

enum Server {
    case common
}

enum Client {
    case common
}

let e1 = MyError.server(.common)
let e2 = Server.common

func hoge(error: Error) {
    switch error {
    case MyError.server(.common):
        print("server")
    case Server.common:
        print("server 2")
    default:
        print("default")
    }
}

hoge(error: e1)

let ne = e1 as NSError
ne.code
ne.domain
ne.userInfo
//hoge(error: e2) // error!!
