//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation



/*
 0. 게임 시작
 1. 길이가 3인 정수 배열 선언, 난수 카운터
 2. 시행횟수 선언 후 9 할당
 3. 난수 생성후 정수 배열에서 검색
     1. 같은 원소 있으면 다시 난수 생성
     2. 없으면 추가 후 난수 카운터 1증가
 4. 난수 카운터가 3이 아닌 경우 다시 난수 생성으로
 5. 임의의 수 생성 후 배열과 비교
 6. 배열과 일치하는게 있으면 일단 ball, 순서까지 동일하면 strike, 하나도 일치하지 않으면 nothing
 7. strike 갯수 알아보고 3이면 플레이어 승 아니면 시행횟수 0 될때까지 게임 다시 진행
 8. 시행 횟수 0에 도달 하면 컴퓨터 승
 11. 게임 종료
 */


var randomNumbers = [Int]()
var randomNumberCounter = 0
var totalTrialNumber = 9

func makeRandomNumbers() { // 난수 생성
    
}


func searchDuplicatedNumber(randomNumbers: Array<Int>) { // 중복검사
    while (randomNumberCounter != 3) {
        let randomNumber = Int.random(in: 1...9) // 난수 생성하고
        if !randomNumbers.contains(randomNumber) { // 방금 생성된 난수를 포함하지 않는다면
            randomNumbers.  // 배열에 난수 추가
            randomNumberCounter += 1
        }
    }
}

func checkStrikeBall() {
    
}


