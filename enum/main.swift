include Swift

//열거형 
//스위프트 열거형은 다른 언어의 열거형과 많이 달라. 
//enum, 자체가 하나의 데이터 타입으로 대문자 카멜케이스를 사용해서 이름을 정의! 
//각 case는 소문자 카멜케이스로 정의한다. 
//각 case는 그 자체가 고유의 값이다. (각 case에 자동으로 정수값이 할당되지 않아!)
//각 case는 한 줄에 개별로도 한 줄에 여러개도 정의가 가능! 

enum 이름 {
    case 개별로도
    case 가능하고
    case 이렇게,이어서,여러개도,가능하다는것
    // .. 
}


// 예제를 봐보자

enum Camp { 
    case iosCamp 
    case androidCamp 
    case webCamp 
}

//그럼 사용은 어떻게 함? 
//타입이 명확할 경우, 이름은 생략이 가능 
//스위치 구문에서 사용하면 좋음. 

enum Weekday { 
    case mon 
    case tue 
    case wed 
    case thu, fri, sat, sun
}
// 이렇게 정의하고 

//열거형 타입과 케이스를 모두 사용가능.

var day: Weekday = Weekday.mon

// 만약 타입이 명확하다면 생락

day = .tue  //(.은 오타가 아니다.)
print(day) 

//스위치구문의 비교값에 열거형 타입이 있을대 
// 모든 열거형 케이스를 포함한다면 
// default를 작성할 필요가 없어. 

switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금이다!")
case .sat, .sun:
    print("주말이다!")
}


//원시값 (rawValue)
//C의 enum처럼 정수값을 가질 수 있어 
//rawValue는 case별로 각각 다른 값을 가져야해 
//자동으로 1이 증가된 값을 할당받아. 
//반드시 필요하지 않다면 안만들어도 돼 

 enum Fruit: Int { 
     case apple = 0 
     case banana = 1 
     case peach

     //아래 예시는 안된다! 왜? 이미 apple과 같은 값이라 mango 케이스의 원시값을 0으로 설정이 안돼 
     case mango = 0
 }