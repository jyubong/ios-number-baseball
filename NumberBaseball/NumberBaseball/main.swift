//
//  NumberBaseball - main.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//func makeRandomThreeNumbers() -> [Int] {
//    var randomNumbers: Set<Int> = []
//    while randomNumbers.count < 3 {
//        let randomNumber = Int.random(in: 1...9)
//        randomNumbers.insert(randomNumber)
//    }
//    return Array(randomNumbers)
//}
//
//func printMenu() {
//    print("1. 게임시작")
//    print("2. 게임종료")
//    print("원하는 기능을 선택해주세요:",terminator: " ")
//
//}
//
//func choiceMenu() {
//    let choiceMenuNumber = readLine()
//    if let number = choiceMenuNumber {
//        selectMenu(menuNumber: number)
//    }
//}
//
//func selectMenu(menuNumber: String) -> () {
//    switch menuNumber {
//    case "1":
//        break
//    case "2":
//        break
//    default: print("입력이 잘못되었습니다")
//    }
//}

let computerNumbers: [String] = ["1","2","3"]

func inputUserNumbers() {
    print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요")
    print("중복숫자는 허용하지 않습니다")
    print("입력:",terminator: " ")
    let userinputNumbers = readLine()?.components(separatedBy: " ")
    if let userNumbers = userinputNumbers {
        checkWrongNumber(userInput: userNumbers)
    }
}

func checkWrongNumber(userInput: [String]) {
    if mapNumbers(userInput: userInput) {
        print(countStrikes(computerNumbers: computerNumbers, userInputNumbers: userInput))
        print(countBall(computerNumbers: computerNumbers, userInputNumbers: userInput))
    } else {
        print("입력이 잘못 되었습니다.")
    }
}

func mapNumbers(userInput: [String]) -> Bool {
    let result: [Int] = userInput.compactMap {
        Int(String($0))
    }
    return checkCommonNumbers(userInput: result)
}

func checkCommonNumbers(userInput: [Int]) -> Bool {
    let checkedNumbers: Set<Int> = Set(userInput)
    guard checkedNumbers.count == 3 && checkedNumbers.contains(0) == false else { return false }
    return true
}

func countStrikes(computerNumbers: [String], userInputNumbers: [String]) -> Int {
    var strikeCount: Int = 0
    if computerNumbers[0] == userInputNumbers[0] {
        strikeCount += 1
    }
    if computerNumbers[1] == userInputNumbers[1] {
        strikeCount += 1
    }
    if computerNumbers[2] == userInputNumbers[2] {
        strikeCount += 1
    }
    
    return strikeCount
    
}

func countBall(computerNumbers: [String], userInputNumbers: [String]) -> Int {
    var commonNumbersCount: Int = 0
    if computerNumbers.contains(userInputNumbers[0]) {
        commonNumbersCount += 1
    }
    if computerNumbers.contains(userInputNumbers[1]) {
        commonNumbersCount += 1
    }
    if computerNumbers.contains(userInputNumbers[2]) {
        commonNumbersCount += 1
    }
    let ballCount: Int = commonNumbersCount - countStrikes(computerNumbers: computerNumbers, userInputNumbers: userInputNumbers)
    return ballCount
}

inputUserNumbers()
