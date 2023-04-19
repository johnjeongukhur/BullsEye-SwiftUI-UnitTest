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
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        sut = Game()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
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
