//: Playground - noun: a place where people can play

import UIKit

let a = "8.1"

if a.compare("8.1") != ComparisonResult.orderedAscending {
    print("現在のバージョンより下です")
} else {
    print("現在のバージョンより上です")
}

if a.compare("8.1") == ComparisonResult.orderedDescending {
    print("現在のバージョンより下です")
} else {
    print("現在のバージョンより上です")

}

if a.compare("8.0") == ComparisonResult.orderedDescending {
    print("現在のバージョンより下です")
} else {
    print("現在のバージョンより上です")
    
}

