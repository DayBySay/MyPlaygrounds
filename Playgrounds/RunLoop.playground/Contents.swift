//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("piyo")
let d = Date()
var limit = 1000
var i = 0
var run = true
Timer.scheduledTimer(withTimeInterval: 0.1
    , repeats: true) { _ in
        i+=1
        if (limit < i) {
            run = false
        }
        print("hoge")
}

let runLoop = RunLoop.current

while run { // 実行ループの実装
    runLoop.run(until: Date())
}

let dd = Date()

print("fuga")




DispatchQueue.global().async {
    print("piyo")
    
    var context = CFRunLoopSourceContext()
    let source = CFRunLoopSourceCreate(nil, 0, &context)
    let runloop = RunLoop.getCFRunLoop(RunLoop.current)()
//    CFRunLoopAddSource(runloop, source, CFRunLoopMode.defaultMode)
    
    var done = false
    while !done { // 実行ループの実装
        let result = CFRunLoopRunInMode(CFRunLoopMode.defaultMode, 3, true)
        print(result.rawValue)
        
        if result == .stopped || result == .finished { //|| result == .timedOut {
            done = true
        }
    }
    
    print("fuga")
}

