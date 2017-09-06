//: Playground - noun: a place where people can play

import UIKit
import Arcane
import CCommonCrypto

extension String {
    func sha256data()  -> Data? {
        guard let messageData = self.data(using: .utf8) else {
            return nil;
        }
        
        var digestData = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
        _ = digestData.withUnsafeMutableBytes(){ digestBytes in
            messageData.withUnsafeBytes() { messageBytes in
                CC_SHA256(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        return digestData
    }
}

let userID: String = "daybysay"
let hashedData: Data = userID.sha256data()!
let hashedID: String = hashedData.map { String(format: "%02hhx", $0) }.joined()
print(hashedID)

// echo -n "daybysay" | shasum -a 256
// 3e7367f11c1ff6f33d3df7f3d5c4600baf3d3cbc32c4d858003c7a8485d038e2