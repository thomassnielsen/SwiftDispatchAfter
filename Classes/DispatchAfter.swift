//
//  DispatchAfter.swift
//
//  Created by Nikita Took on 08/04/15.
//  Copyright (c) 2015. All rights reserved.
//
//  inspired by implementation of Matt Neuburg (http://stackoverflow.com/users/341994/matt)
//

import Foundation

public func delay(_ aDelay:TimeInterval, closure: @escaping () -> Void) {

    delay(aDelay, queue: DispatchQueue.main, closure: closure)

}

public func delay(_ aDelay:TimeInterval, queue: DispatchQueue, closure: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + aDelay) {
        closure()
    }

}

public extension Int {
    var second: TimeInterval { return TimeInterval(self) }
    var seconds: TimeInterval { return TimeInterval(self) }
    var minute: TimeInterval { return TimeInterval(self * 60) }
    var minutes: TimeInterval { return TimeInterval(self * 60) }
    var hour: TimeInterval { return TimeInterval(self * 3600) }
    var hours: TimeInterval { return TimeInterval(self * 3600) }
}

public extension Double {
    var second: TimeInterval { return self }
    var seconds: TimeInterval { return self }
    var minute: TimeInterval { return self * 60 }
    var minutes: TimeInterval { return self * 60 }
    var hour: TimeInterval { return self * 3600 }
    var hours: TimeInterval { return self * 3600 }
}
