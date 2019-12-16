//
//  DoubleFrame.swift
//  CodingDojo-TDD
//
//  Created by Maxime Tournier on 16/12/2019.
//  Copyright © 2019 SFR. All rights reserved.
//

import Foundation

enum DoubleFrameType {
    case spare, strike, openGame
}

class DoubleFrame {
    
    var firstFrame: Int
    var secondFrame: Int
    
    internal init(firstFrame: Int, secondFrame: Int) {
        self.firstFrame = firstFrame
        self.secondFrame = secondFrame
    }
    
    
    var type: DoubleFrameType {
        if firstFrame == 10 { return .strike }
        if calculate() == 10 { return .spare }
        return .openGame
    }
    
    func calculate() -> Int? {
        if firstFrame < 0 || secondFrame < 0 { return nil }
        if firstFrame > 10 || secondFrame > 10 { return nil }
        let result = firstFrame + secondFrame
        if result > 10 { return nil }
        return result
    }
}
