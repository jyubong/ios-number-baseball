//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

func checkBallStrikeCount(to: [Int], and: [Int]) -> Int {
    var ball = 0
    var strike = 0
    let answerNumbers = to
    let randomNumbers = and
    
    for number in randomNumbers {
        if answerNumbers.contains(number) {
            ball += 1
        }
    }

    for index in 0...2 {
        if answerNumbers[index] == randomNumbers[index] {
            ball -= 1
            strike += 1
        }
    }
    
    print("\(strike) 스트라이크, \(ball) 볼")
    return strike
}

func initRandomNumber() -> [Int] {
    var randomNumbers: Array<Int> = Array<Int>()
    var randomNumberSet: Set<Int> = Set<Int>()
    
    while randomNumberSet.count < 3 {
        randomNumberSet.insert(Int.random(in: 1...9))
    }

    for randomNumber in randomNumberSet {
        randomNumbers.append(randomNumber)
    }

    print("임의의 수 : \(randomNumbers.map{(randomNumber: Int) -> String in return String(randomNumber)}.joined(separator: " "))")
    
    return randomNumbers
}

func startBaseballGame() {
    var answerCountCheck: Set<Int> = Set<Int>()
    var answerNumbers: Array<Int> = Array<Int>()
    var lastChance = 9
    var startLoop: Bool = true
    
    while answerCountCheck.count < 3 {
        answerCountCheck.insert(Int.random(in: 1...9))
    }

    for number in answerCountCheck {
        answerNumbers.append(number)
    }
    
    while startLoop {
        let strike = checkBallStrikeCount(to: answerNumbers, and: initRandomNumber())
        
        if strike == 3 {
            print("사용자 승리!")
            startLoop = false
        } else if lastChance == 0 {
            print("컴퓨터 승리...!")
            startLoop = false
        } else {
            print("남은 기회 : \(lastChance)")
        }
        lastChance -= 1
    }
}

startBaseballGame()


