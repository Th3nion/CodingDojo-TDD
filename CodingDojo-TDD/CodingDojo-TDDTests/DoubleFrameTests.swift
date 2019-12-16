// testIOSTests.swift
// testIOSTests
//
// Created by Diego Patino on 12/12/2019.
// Copyright © 2019 Diego Patino. All rights reserved.
//

import XCTest

@testable import CodingDojo_TDD

class DoubleFrameTests: XCTestCase {
    
  func makeSut(firstFrame: Int, secondFrame: Int = 0) -> DoubleFrame {
    return DoubleFrame(firstFrame: firstFrame, secondFrame: secondFrame)
  }
    
  func test_when_total_of_double_frame_is_superior_at_ten_then_result_is_nil() {
    let sut = makeSut(firstFrame: 5, secondFrame: 6)
    let result = sut.calculate()
    XCTAssertNil(result)
  }
    
  func test_when_strike_then_second_frame_is_zero_and_type_is_strike() {
    let sut = makeSut(firstFrame: 10)
    XCTAssert(sut.secondFrame == 0)
    XCTAssert(sut.type == .strike)
  }
    
  func test_when_total_of_frame_is_ten_type_is_spare() {
    let sut = makeSut(firstFrame: 5, secondFrame: 5)
    XCTAssert(sut.type == .spare)
  }
    
  func test_when_first_frame_is_negative_then_nil() {
    let sut = makeSut(firstFrame: -1, secondFrame: 6)
    let result = sut.calculate()
    XCTAssert(result == nil)
  }
    
  func test_when_second_frame_is_negative_then_nil() {
    let sut = makeSut(firstFrame: 6, secondFrame: -1)
    let result = sut.calculate()
    XCTAssert(result == nil)
  }
    
  func test_sum_of_frames_is_inferior_at_ten_then_type_is_openGame_and_result_is_sum_of_frames() {
    let sut = makeSut(firstFrame: 6, secondFrame: 3)
    let espectedResult = sut.firstFrame + sut.secondFrame
    let result = sut.calculate()
    XCTAssert(result == espectedResult)
    XCTAssert(sut.type == .openGame)
  }
}
//class BowlingCalculatorTests: XCTestCase {
//
//  func makeSut(frames: [(Int, Int)]) -> BowlingCalculator {
//    let doubleFrames = frames.map { (first, second) -> DoubleFrame in
//      DoubleFrame(firstFrame: first, secondFrame: second)
//    }
//    return BowlingCalculator(frames: doubleFrames)
//  }
//
//  func test_when_has_only_open_games_then_result_is_sum_of_frames() {
//    let sut = makeSut(frames: [(2, 5), (5, 2)])
//    let expectedResult = 14
//    let result = sut.calculate()
//    XCTAssert(result == expectedResult)
//  }
//
//  func test_when_spare_then_next_frame_count_twice() {
//    let sut = makeSut(frames: [(5, 5), (10, 0), (4,3)])
//
//  }
//
//}
