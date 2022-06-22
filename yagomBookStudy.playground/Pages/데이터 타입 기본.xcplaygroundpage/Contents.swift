import Foundation

// 모든 데이터 타입은 대문자로 시작하는 대문자 카멜케이스를 사용한다.

// Int and UInt

/*간단히 말하면 Int와 UInt의 차이점은 부호이다. 먼저 둘다 정수형태로 사용되며 UInt의 최솟값은 0이고 -부호를 가진 값은 존재하지 않는다. (0과 양의정수만사용)
 Int는 양,음의 정수와 0을 모두 사용한다. 단지 양수만 사용한다고 해서 UInt와 Int를 같이 사용하는 것은 좋지 않다. 스위프트는 두 데이터 타입을 완전히 다른 것으로 보기 때문에 더 많은 자원을 사용 하기 때문이다.
 */

var Integer: Int = -100
let UInteger: UInt = 50
print("integer 값: \(Integer), UInteger 값: \(UInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

let largeInteger: Int64 = Int64.max
let smallUInteger: UInt8 = UInt8.max
print("Int64 최댓값: \(largeInteger), UInt8 최댓값:\(smallUInteger)")

let tooLarge: Int = Int.max + 1 // Int 범위 초과로 오류나옴
let cannotBeNegetive: UInt = -1 // UInt는 음의 정수 표현 불가로 인한 오류 출력

Integer = UInteger // 둘이 값은 타입일 수는 없다.
Integer = Int(UInteger) // Int 타입의 값으로 할당해야 한다.

// 오류가 나서 출력이 안된다면 해당 부분을 주석처리하자.

//진수별 정수를 표현하는 방법.

let 십진수: Int = 28
let 이진수: Int = 0b11100 //접두어 0b사용
let 팔진수: Int = 0o34 //접두어 0o사용
let 십육진수: Int = 0x1C //접두어 0x사용


// Bool(불리언 타입)

// 불리언 타입은 참, 거짓 으로만 표현한다.

var Boolean: Bool = true
Boolean.toggle() // 값 반전하기

let myNameIs태경: Bool = true
let 시간은무한한가: Bool = false
print("시간은 무한합니까? \(시간은무한한가)")


//Double과 Float
// 부동소수점을 사용하는 실수형태를 나타낼때 사용한다. 일반적으로 Double형태가 Float보다 더 많은 소수점을 나타낼 수 있다. (64비트 환경에서 최소 15자라의 십진수를 표현, Float은 6자리의 숫자까지만 가능)
// 따라서 무엇을 사용할지 혼동이 온다면 보통 Double로 사용하는 것이 좋다. 형태는 위와 마찬가지로 똑같으니 따로 만들진 않겠다.

//임의의 숫자 만들어보기.
//스위프트 4.2 버전부터 임의의 수를 만드는 random(in:)메서드가 추가되었다. 정수, 실수, 모두 만들수 있다 한번 만들어 보자!

print(Int.random(in: -100...100))
print(UInt.random(in: 1...30))
print(Double.random(in: -1.5...5.5))


//Character
// 말 그대로 "문자"를 의미한다. 단어, 문장이 아니라 ㄱ 과 같은 문자를 의미한다. 문자를 표현하기 위해서는 앞에 큰 따옴표를 사용하여 표현한다.

let 알파벳A: Character = "A"
print(알파벳A)

// String
// String은 문자의 나열,-> 문자열입니다.

let 문장: String = "문장입니다."
var introduce: String = String() //이건 뭔가? -> 이니셜라이저를 사용해서 빈 문자열을 생성하였다. 또한 var으로 만들어서 변경이 가능하다.

introduce.append("제 이름은") // append() 메서드를 사용하여 추가한다.

introduce = introduce + " " + 문장 // + 연산자로 붙일 수 있다.
print(introduce)

print("문장의 글자수는? -> \(문장.count)") //글자수를 셀수 있다.
print("introduce가 비어있을까? -> \(introduce.isEmpty)") //비었는지 아닌지 확인이 가능하다.


// 특수 문자.

print("문자열 내부에 \n이런 \"특주문자\"를 사용하면 \\이런 놀라운 결과를 볼 수 있습니다!")
print(#"문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요"#);
let Number: Int = 100
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \#(Number) 해보세요"#)

// Any, AnyObject, nil

// Any는 모든 데이터 타입을 사용할 수 있다는 뜻이다. AnyObject는 Any보다는 조금 한정된 의미로 클래스의 인스턴스만 할당할 수 있다는 뜻이다.

var someVar: Any = "이렇게 문자열도 되고"
someVar = "100"
someVar = "-100"
someVar = "100.12312"

// 다된다! 하지만 될 수 있으면 사용하지마라 왜? 데이터 타입에 엄격한 스위프트 특성상 매번 타입 확인 및 변환을 해줘야 하는 불편함이 있고 오류가 나올 가능성이 높아진다.

// nil은 사실 데이터 타입이 아니라 비어있다는 의미의 스위프트 키워드다. nil처리가 되있는 변수나 상수에 접근하면 오류가 발생한다. 
