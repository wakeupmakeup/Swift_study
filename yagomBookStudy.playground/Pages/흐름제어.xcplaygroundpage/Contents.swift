// 다 아는 if문 for문 while문 등등 이다.
// 하지만 스위프트와 다른 언어의 차별성이 있기 때문에 사용에 주의해야 한다.
// 스위프트의 흐름 제어 구문에서는 소괄호를 대부분 생략할 수 있다. 하지만 중괄호는 생략 할 수 없다.


// 조건문
// 조건에서는 if 구문과 switch 구문이 있다 하지만 스위프트 조건문에는 guard라는 구문도 있는데 이것은 추후에 설명할 것이다.
// 스위프트의 if 구문은 조건의 값이 꼭 Bool 타입이어야 한다. 이거 중요하니 꼭 기억하자!

// 아래는 if 구문의 기본 구현이다!

let first: Int = 5
let second: Int = 7

if first > second {
    print("처음이 더 크다")
} else if first < second {
    print("둘째가 더 크다")
} else {
    print("두 값이 같다")
}

// 스위프트 if문은 c랑 사용법이 비슷하다 else if 같은 것은 기본적인 것이니 가볍게 넘어가겠다. 그리고 if 키워드 뒤에 따라오는 조건 수식을 괄호(소)로 감싸주는 것은 선택사항이다.

// 아래는 if 구문의 다양한 구현이다!

let anotherFisrt: Int = 5
let anotherSecond: Int = 5
var bigValue: Int = 0

if anotherFisrt > anotherSecond { // 조건 수식을 소괄호로 묶어주는 것은 선택사항이다!
    bigValue = anotherFirst
} else if anotherFisrt == anotherSecond {
    bigValue = anotherFisrt
} else if anotherFisrt < anotherSecond {
    bigValue = anotherSecond
} else if anotherFirst == 5 {
    bigValue = 100
    // 이 실행문은 실행되지 않는다 이미 anotherFirst == anotherSecond 라는 조건문이 먼저 실행되었기 때문이다.
}

print(bigValue) // 5가 출력된다.


// switch 구문
// 스위프트에서 스위치 구문은 break가 선택사항이라는 것이 큰 특징이다. 소괄호도 생략할 수 있다. 따라서 break를 쓰지 않고 case를 연속 실행하던 트릭을 더 이상 사용하지 못한다.
// 연속 사용을 하기 위해선 fallthrough 키워드를 사용해야한다.
// c에선 정수 타입만 들어 갈 수 있었으나 스위프트에서는 조건에 다양한 값이 들어갈 수 있다.

// 스위치 구문의 구조를 간단히 적어보자!

switch 입력값 {
case 비교 값 1:
    실행 구문
case 비교 값2:
    실행 구문
    // 이번 case를 마치고 스위치 구문을 탈출 시키고 싶지 않다면 밑에 처럼 입력해야한다.
    fallthrough // 이렇게!
case 비교 값3, 비교 값4, 비교 값5 // 이렇게 한번에 여러 값을 비교 할 수 있다.
    실행 구문
default: // 만약 한정된 범위가 명확하지 않다면 이렇게 써야한다.(필수)
    실행 구문
}

// 위 구조를 바탕으로 다시 한번 만들어 보자!

let intValue: Int = 5

switch intValue {
case 0:
    print("값은 0이다")
case 1...10:
    print("값은 1~10중에 하나다").  // 1 부터 10까지
    fallthrough
case Int.min..<0, 101..<Int.max:
    print("값은 0보다 작거나 100보다 크다")
    break //선택사항이다.

default:
    print("값은 10보다 작거나 100보다 작거나 같다")
}

// 결과
// 값은 1~10중에 하나다
// 값은 0보다 작거나 100보다 크다

// 스위프트의 스위치 구문에선 위와같이 범위도 사용이 가능하다! 세번째 case가 실행된 이유는 fallthrough을 적었기 때문이다.
// 범위 연산자는 정수 뿐만 아니라 부동소수 타입에도 사용이 가능하다.
// 예시는 들지 않겠다. 위에 정수타입을 double로 바꾸고 값을 5.0 이런 식으로 변환하면 그만이기 때문이다.

// 또한 아래 처럼 숫자뿐만이 아닌 문자, 문자열, 열거형, 투플, 범위, 패턴(아직은 안다뤘지만) 등등 여러가지 데이터 타입을 사용할 수 있다.

let stringValue: String = "김태경"

switch stringValue {
case "태완":
    print("내 이름은 태완")
case "칠성":
    print("사이다는 칠성이지")
case "제로콜라", "그냥콜라", "환타"
    print("너 뭐마실껀데? 이거? \(stringValue)"
    
default:
        print("\(stringValue)는 어떤건지 잘 모르겠어")
}

// 위 처럼 여러 개의 항목을 한 번에 case로 지정해주는 것은 가능하나 이를 위해 case를 연달아서 사용하는 것은 불가능하다 아래처럼!


let stringValue: String = "김태경"

switch stringValue {
case "태완":
    print("내 이름은 태완")
case "칠성":
    print("사이다는 칠성이지")
case "제로콜라":
    // stringValue가 "제로콜라"일때 실행될 코드가 이곳에 와야한다.
    // 하지만 비어있으므로 오류가 발생합니다.

case "그냥콜라":
    //위와 똑같다.

case "환타":
    print("너 뭐마실껀데? 이거? \(stringValue)")
    
default:
        print("\(stringValue)는 어떤건지 잘 모르겠어")
}

// 만약 c의 스위치처럼 break를 사용하지 않은 경우 그 다음 case를 실행하도록 했던 트릭을 스위츠트에서 구형하고자 한다면 아까도 말했지만 fallthrought를 사용해야한다.

// 아래 처럼 튜플도 가능하다.

typealias nameAge = (name: String, age: Int)  // 한변 타입 별칭을 만들어 놓으면 그냥 이름만 써도 된다.

let tupleValue: nameAge = ("김태경", 25)

switch tupleValue {
case ("김태경", 25):
    print("와우! 정답입니다!")
default:
    print("그거 저 아닌데요?")
}

// 정답입니다!

// 와일드카드 식별자라고 있다. (_)으로 사용하는데 튜플은 이 식별자와 찰떡궁합이다. 대충 어떤 뉘앙스인지는 아래의 코드를 확인해보자.

typealias nameAge2 = (name: String, age: Int)

let tupleValue2 nameAge2 = ("김태경", 25)

switch tupleValue2 {
case ("김태경", 25):
    print("와우! 정답입니다!")
    
case ("김태경", _):  // 이것이 와일드카드 식별자다.
    print("이름만 맞췄어. 내 나이는 \(tupleValue2.age)")

case (_, 25):
    print("나이만 맞았어. 내 이름은 \(tupleValue2.name)")
    
default:
    print("그게 누군데? ㅋㅋ")
}

// 이런 상황을 만들 수 있다! 하지만 이렇게 하려면 하나하나 값을 가져와야 하는 불편함이 생긴다 \() 이렇게 말이다.
// 그래서 미리 지정된 조건 값을 제외한 다른 값은 실행문 안으로 가져올 수 있다. let을 붙인 값 바인딩을 사용한다. (??)

typealias nameAge3 = (name: String, age: Int)

let tupleValue3: nameAge3 = ("김태경", 25)

switch tupleValue3 {
case ("김태경", 25):
    print("와우! 정답입니다.")
    
case ("김태경", let age): // 바인딩 한 모습!
    print("이름만 맞췄어 내 나이는 \(age)야")
    
case (let name, 25):
    print("나이만 맞췄어 내 이름은 \(name) 이야")
default:
    print("그게 누구야? ㅋㅋ")
}

// where문으로 더 확장할 수 있지만 여기선 다루지 않겠다.
// 열거형과 같이 한정된 범위의 값을 입력 값으로 받게 될 때 값에 대응하는 각 case를 구형한다면 default를 구형하지 않아도 된다! 만약 값에 대응하는 각 case를 구현하지 않는다면 default는 필수다!

enum school {
    case 유치원, 초등학교, 중학교, 고등학교, 대학교, 대학원
}

let 최종학력: school = school.고등학교

switch 최종학력 {
case .유치원:
    print("내 최종학력은 유치원이다.")
    
case .초등학교:
    print("내 최종학력은 초등학교이다.")
    
case .중학교:
    print("내 최종학력은 중학교이다.")
    
case .고등학교:
    print("내 최종학력은 고등학교이다.")
    
case .대학교:
    print("내 최종학력은 대학교이다.")
    
case .대학원:
    print("내 최종학력은 대학원이다.")
}

// 내 최종학력은 고등학교이다.

// 만약 열거형에 case가 추가될 가승성이 있다면?
// 먼저 위에 열거형 요소 하나하나 case화 시키면 잘 작동하겠지만 만일 나중에 case를 추가 하게 된다면 오류가 날 것이다.
// 이런 문제를 unknown이라는 속성으로 해결 할 수 있다 먼저 이 속성을 사용하지 않고 와일드카드 속성을 이용해 구현해보자.

enum Menu {
    case 치킨
    case 짜장면
}

let lunchMenu: Menu = .치킨

switch lunchMenu {
case .치킨:
    print("반반으로 주시고 무는 뺴주세요")
case .짜장면:
    print("젓가락은 빼주세요")
case _: // case default: 와 같은 표현이다.
    print("뭐먹지...?")
}

// 점심메뉴는 딱 정해져있진 않다. 그래서 나주에 추가할 것으로 예상을 했었다. 그래서 스위치 마지막 구문에 와일드 카드 구문을 추가하였다.
// 그러면 나중에 case를 추가해도 오류가 생기지 않을 것이다. 그럼에도 불구하고 컴파일러가 경고를 보여주긴 할 것이다.

// 만약 Menu 열거형에 새로운 case를 추가했다고 가정해보다. 그리고 깜빡하고 위처럼 구현해 둔 스위치 구문의 내부 코드를 수정하지 않았다면?
// 오히려 case _의 상황이 발생할 수 있기에 경고조차 사라진다. 따라서 먼 훗날 나 혹은 동료가 이상한 값이 도출될 때 알아차리기 매우 힘들다.
// 이런 문제를 예방하기 위해서 unknown 속성을 사용하는 것이다.


enum Menu {
    case 치킨
    case 짜장면
    case 햄버거
}

let lunchMenu: Menu = .치킨

switch lunchMenu {
case .치킨:
    print("반반으로 주시고 무는 뺴주세요")
case .짜장면:
    print("젓가락은 빼주세요")
@unknown case _: // unknown 속성을 사용했다.
    print("뭐먹지...?")
}

// 여기서는 햄버거 case를 추가했고 case _ 앞에 보다시피 unknown을 사용했다.
// 이것을 사용하면 스위치 문에서 경고가 발생하는데 해당 수위치 구문이 모든 case에 대응 하지 않는 사실을 알려준다. (중요)





// 반복문
// 기존의 다른 언어들과 별반 차이점은 딱히 없다. 다만 약간의 사용법이 다를 뿐이다.

// for-in 구문
// 반복적인 데이터나 시퀀스를 다룰 때 많이 사용한다.

for 임시 상수 in 시퀀스 아이템 {
    실행 코드
} // 기본 틀.

// for-in 구문의 활용

for i in 0...2 {
    print(i)
}
    
for i in 0...5 {
    if i.isMultiple(of:2) { // 짝수일 경우 - 굳이 짝수를 구현하지 않아도 이런것을 사용하는 법을 알아놓으면 좋다.
        print(i)
        continue  // continue 키원드를 사용하면 바로 다음 시퀀스로 건너뛴다.
    }
    print("\(i) == 홀수")
    
}

let hello: String = "안녕 스위프트"
    
for char in hello {
        print(char)
}

var result: Int = 1
    
// 시퀀스에 해당하는 값이 필요 없다면 와일드카드 식별자(_)를 사용하면 된다.
for _ in 1...3{
    result *= 10
}

print("10의 3제곱은 \(result)입니다.")
// 10의 3 제곱은 1000입니다.


// 컬렉션 타입에서도 사용할 수 있다!

let 친구들: [String: Int] = ["태경": 25, "태완": 22, "민지": 23]

for tuple in 친구들{
    print(tuple)
}

// 튜플안에 들어간 요소들(이름과 나이)가 다 나온다

let 주소:[String: String] = ["도": "충청북도", "시군구": "청주시 청원구", "동읍면": "울량동"]

for (키, 값) in 주소 {
    print("\(키) : \(값)")
}

// Set
let 지역번호: Set<String> = ["02", "031", "032", "기타등등"]

for 번호 in 지역번호{
    print(번호))
}

// 02
// 031
// 032
// 기타등등


// while 구문
// 이것도 비슷하게 사용한다.

var names: [String] = ["태경", "민지"]


while names.isEmpty == false {
    print("안녕 잘가 \(names.removeFirst())")
    // removefirst()는 삭제함과 동시에 그 삭제한 요소를 반환한다.
}

// repeat-while 구문
// repeat-while 반복 구문은 다른 프로그래밍 언어의 do-while 구문과 크게 다르지 않다.

var names: [String] = ["태경", "민지"]

repeat {
    print("안녕 잘가 \(names.removefirst())")
} while names.isEmpty == false

// 구문 이름표
// 종종 프로그램을 작성하면서 반복문을 중첩으로 사용하는 경향이 있는데 이럴 때 이름표를 사용해서 햇갈리지 않게 할 수 있다.
// 주석을 달지 않아도 된다.

var numbers: [Int] = [3,2342,6,3252]

numbersLoop: for num in numbers{
    if num > 5 || num < 1{
        continue numbersLoop // 구문 이름표는 단순히 이름만 짓는것이 아니라 이렇게도 사용이 가능하다.
    }
    var count: Int = 0
    
    printLoop: while true{
        print(num)
        count += 1
        
        if count == num{
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num{
            break numbersLoop
        }
        numbers.removefirst()
    }
}
    

    







    
