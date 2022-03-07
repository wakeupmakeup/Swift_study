import Swift

// 값이 있을 수도 있고 없을 수도 있음을 표현한것!
// nil이 항당 될 수 있는지 없는지 표현한다!

// 이걸 왜 쓰는가? -> nil 가능성을 문서화 하지 않아도 코드만으로 충분히 표현가능
// 문서/ 주석 작성 시간을 절약
// 전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용가능!
// 효율적인 코딩과 예외 상황을 최소화하는 안전한 코딩!

//someOptionalParm에 nil이 할당 될 수 있다.
func someFunction(someOptionalparam: Int?){
    // ..... 어쩌고 저쩌고
}

//someOptionalParm에 nil이 할당 될 수 없다.
func someFunction(someOptionalParam: Int){
    // ....
}

someFunction(someOptionalparam: nil)
// someFunction(someParam: nil)


// 옵셔널 문법과 선언
// 옵셔널 문법 = enum + generics
// 옵셔널 선언

enum Optinal<Wrapped>:ExpressibleByNiliteral {
    case none
    case some(Wrapped)
}

let optionalValue: Optional<Int> = nil
let optionalValue: Int? = nil

// 옵셔널 표현 -> 느낌표를 이용한 암시적 추출 옵셔널 -> 엥? 암시적 옵셔널은 뭐지? -> 암시적으로 값이 있다고 생각하고 옵셔널에서 추출하는것! 그래서 밑에 기존 변수처럼 사용이 가능한것임... 

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("이 옵셔널 값은 nil입니다.")
case.some(let value):
    print("값은 \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당가능
implicitlyUnwrappedOptionalValue = nil

//잘못된 접근으로 인한 런타임 오류 발생!
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1


// Optional

var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("이 옵셔널 값은 nil입니다.")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산이 불가능하다!
