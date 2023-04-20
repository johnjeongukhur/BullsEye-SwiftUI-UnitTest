//
//  Game.swift
//  BullsEye
//
//  Created by Oğuz Karatoruk on 20.03.2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    mutating func points(sliderValue: Int) -> Int {
        // case: 실패 케이스
//        let difference = sliderValue - target
        // case: 성공 케이스
        let difference = abs(target - sliderValue)
        
        // case: 함수가 잘 못 되었을 때
        round = 100 - difference
        score += round
        return round
        
    }
}
