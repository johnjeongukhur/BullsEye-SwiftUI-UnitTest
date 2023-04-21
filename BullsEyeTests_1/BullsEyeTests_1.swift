//
//  BullsEyeTests_1.swift
//  BullsEyeTests_1
//
//  Created by John Hur on 2023/03/26.
//

import XCTest
@testable import BullsEye

class BullsEyeTests_1: XCTestCase {
    
    var sut: Game!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Game()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testScoreIsComputedWhenGuessIsHigherThanTarget() {
        // given
        let guess = sut.target + 5
        
        // when
        let score = sut.points(sliderValue: guess)
        
        // then
        XCTAssertEqual(score, 95, "Score computed from guess is wrong.")
    }
    
    func testScoreIsComputedWhenGuessIsLowerThanTarget() {
        // given
        let guess = sut.target - 5
        
        // when
        let score = sut.points(sliderValue: guess)
        
        // then
        XCTAssertEqual(score, 95, "Score computed from guess is wrong.")
    }
}
