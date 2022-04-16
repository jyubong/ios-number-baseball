# 숫자야구 프로젝트 저장소
> 프로젝트 기간 2022/04/12 ~ 2022/04/15  
> 팀원: @BaekGom @bard/ 리뷰어: @FirstDo

# 목차
- [프로젝트 소개](#프로젝트-소개)
- [순서도](#순서도)
- [키워드](#키워드)

- [그라운드 룰](#그라운드-룰)
	- [활동시간](##활동시간)
	- [예외사항](##예외사항)
	- [의사소통 방법](##의사소통-방법)
	- [코딩 컨벤션](##코딩-컨벤션)

- [STEP 0](#STEP-0)
	- [고민한점](#고민한점)
	- [배운 개념](#배운개념)
- [STEP 1](#STEP-1)
	- [고민한점](#고민한점)
	- [배운개념](#배운개념)
- [STEP 2](#STEP-2)
	- [고민한점](#고민한점)
	- [배운개념](##배운개념)


# 프로젝트 소개
사용자의 입력값을 받는 숫자야구 게임

# 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.6-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.3-blue)]()

# 순서도 
<img width="683" alt="STEP2 flowChart" src="https://user-images.githubusercontent.com/92622931/163168557-2bb6be5f-0a46-4b31-a326-77a0e08c4622.png">  

# 키워드  
`함수 네이밍`
`optioinal`   
`set` `array` `dictionary`, `tuple`  
`import Foundation`

# 그라운드 룰
## 활동시간
변동사항 있으면 DM 보내줄 것


+ 점심시간 12:30 ~ 13:30
+ 저녁시간 19:00 ~ 20:00

## 예외사항
+ 바드 수요일 11:00 ~ 13:30
+ 백곰 수요일 12:00 ~ 16:00

## 의사소통 방법
+ 디스코드 회의실
+ 단톡방


## 코딩 컨벤션

1. Swift 코드 스타일 : [스위프트 API 가이드라인](https://gist.github.com/godrm/d07ae33973bf71c5324058406dfe42dd) 
2. 커밋 
+ 커밋 Title 규칙

	+ add: 새로운 파일 추가
	+ refactor: 코드 리팩토링
	+ style: 코드 내 들여쓰기나 부가적인 수정
	+ feat: 새로운 기능 추가
	+ fix: 버그 수정
	+ docs: 문서 수정
+ 커밋 body 규칙

	+ 현제 시제를 사용, 이전 행동과 대조하여 변경을 한 동기를 포함하는 것을 권장 문장형으로 끝내지 않기
	+ commitTitle 과 body 사이는 한 줄 띄워 구분하기
	+ commitTitle line의 글자수는 50자 이내로 제한하기
	+ commitTitle line의 마지작에 마침표(.) 사용하지 않기
	+ commitBody는 72자마다 줄 바꾸기
	+ commitBody는 어떻게 보다 무엇을,왜 에 맞춰 작성하기


# [STEP 0]

## 고민한점  
- 어떻게 하면 협업을 잘 할 수 있을까? -> 팀원과의 원활한 소통
- 논리적인 순서도 그리기 -> 많은 연습을 필요로 함, 컴퓨터적 사고능력
- 건강한 그라운드 룰 작성 -> 많은 컨벤션 예시를 통해 둘의 스타일에 맞게 변형


## 배운개념
- `collaborator`설정 방법
- `git pull merge` 에러 잡는 방법
- 코딩 컨벤션 및 그라운드 룰
# [STEP 1]

## 고민한점
- 이중문을 사용하지 않고 코드를 짤 수 있을까? -> 함수 세분화
- 스트라이크와 볼을 카운트 해주는 타입을 어떠한 타입으로 만들지 고민함 
- `dictionary` 대신 무엇을 사용하면좋을까? -> `dictionary` 대신 `tuple`을 사용하였고, 굳이 key value 값으로 나누지 않아도 되는 것은 `tuple`이 더 효율적이었음
- 플래그를 사용하지 않고 하는 방법이 무엇이 있을까? -> 아직 공부가 더 필요한 부분
- 옵셔널 값을 어떻게 벗겨줄 것인가? -> 옵셔널 추출하는 적절한 방법을 찾아 코드 제약사항에 맞게 사용하였음

## 배운개념

- `LGTM`
- `매직 넘버, 리터럴`, `네임 스페이스`
- `tuple`
# [STEP 2]

## 고민한점
- 형 변환 하는 법 -> 배열을 `String.Sequence`가 아니라 `String`타입으로 형 변환을 해주기 위해 `componets`메소드를 찾음
- 잘못된 입력을 하였을 때 반환하는 법 -> 몽키테스트를 진행해서 잘못된 입력을 바탕으로 검증함수 작성

## 배운개념
- `readLine()`의 형 변환
- `고차 함수`
- import `Foundation`을 통해 `componets` 사용할 수 있음
