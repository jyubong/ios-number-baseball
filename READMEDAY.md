# 1. 제목: 숫자 야구 게임
## 2. 소개: 임의의 숫자 3개와 컴퓨터가 만들어 낸 임의의 숫자 3개의 자릿수와 숫자를 비교하여 스트라이크 또는 볼을 나타내어 사용자의 승리 또는 컴퓨터의 승리를 보여주는 게임
## 3. 팀원
### 3-1. 사진: 🏀 & ![](https://i.imgur.com/xFehtHy.png)


### 3-2. 닉네임: kobe & yetti
### 4. 타임라인: 시간 순으로 프로젝트의 주요 진행 척도를 표시
![](https://i.imgur.com/N4L5QkP.png)

### 5. 시각화된 프로젝트 구조(다이어그램 등)
![](https://i.imgur.com/cJfLjXG.png)
### 6. 실행 화면(기능 설명)
6-1. 
![](https://i.imgur.com/AVSV41Q.png)

6-2. 
- 컴퓨터가 뽑아낸 임의의 3개의 숫자의 자릿수와 숫자 그리고 임의의 수 3개의 자릿수와 숫자를 비교합니다.
    - 비교한 후 자릿수와 숫자가 맞으면 스트라이크, 숫자만 맞을 경우 볼의 갯수를 올려줍니다.
        - 총 9번의 기회 중 9번의 기회 모두 사용하면서도 3 스트라이크를 못맞출 경우 "컴퓨터의 승리"
        - 총 9번의 기회 중 9번의 기회 안에 3 스트라이크를 맞출 경우 "사용자의 승리"
            - 위 규칙을 따르며 게임이 실행되는 화면입니다.
### 7. 트러블 슈팅
7-1. 
- while문 사용 시 조건부를 어떻게해야 무한루프에 빠지지 않고 원하는 방향으로 코드가 진행되는지를 고민했습니다. while문에 조건을 추가하는 것으로 무한루프를 막아주었습니다.
- 반복문을 돌 때 임의의 수가 어떻게 계속 변경되면서 출력될 수 있을지 고민했습니다. 전역 변수 Array 타입의 컨테이너를 만들어 그 컨테이너를 활용하여 값을 넣고 저장한 후 값을 함수의 리턴 값으로 리턴해줬습니다. 이후 함수가 다시 실행되면 removeAll()을 사용해 비워주는 초기화 로직을 만들어 넣었습니다.


# 팀 회고
---
### 우리팀이 잘한 점
- 함께 문제를 해결하려 노력했습니다.
- 부족한 부분을 서로 맞추어 나갔습니다.
- 서로의 역할에 충실했습니다.(네비게이터와 드라이버로써 역할을 충실히 했습니다.)

### 우리팀 개선할 점
- 짝 프로그래밍에 대한 개념 정립이 필요할 것 같습니다.
- 스케쥴 조정이 필요할 것 같습니다.
### 서로에게 좋았던 점 피드백
- 예티는 모든 부분에 긍정적이고 문제를 해결해 나아가는 끈기를 가지고 있습니다. 그리고 상대방에 대한 배려심과 타인을 향한 따뜻함이 느껴져서 좋았습니다.
- 코비는 의견을 수용하고 제시하는 부분에 있어서 적극적이어서 팀 프로젝트를 하는데에 큰 힘이 됩니다.