import Foundation

// if-else 구문
// if만 단독으로 사용해도되고, else, else if 와 조랍해서 상요 사능하다.
// if 뒤의 조건 값에는 Bool 타입의 값만 위치해야함.
// 조건을 감싸는 소괄호는 선택사항이다.


/*
if 조건{
    //실행 구문
} else if 조건
    //실행 구문
} else {
    //실행구문
}
 */

// if-else의 쓰임

let someInteger = 100

if someInteger < 100{
    print("100 미만")
}else if someInteger > 100 {
    print("100 초과")
}else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 한다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에 컴파일 오류가 발생한다.
// if someInteger{}

//switch 구문
//스위프트의 스위치 구문은 다른언어에 비해 강력한 힘을 발휘한다!
//기본적으로 사용하던 정수타입의 값만 비교하는 것이 아닌 대부분의 스유ㅣ프트 기본타입을 지원,다양한 패턴과 응용이 가능하다.
//각각의 case 내부에는 실행가능한 코드가 반드시 위치해야한다.
//매우 한정적인 값이 비교값이 아닌 한 default 구문은 반드시 작성해야한다.
//명시적 break를 하지 않아도 자동으로 case마다 break 된다.
//아니면 fallthrough 키워드를 사용하여 break를 무시할 수 있다.
//쉼표(,)를 사용해서 하나의 case에 여러 패턴을 명시할 수 있다.

// 스위치 구문의 기본 형태

/*
switch 비교값{
case 패턴:
    //실행 구문
default:
    //실행 구문
}
*/

// 사용

//범위 연산자를 활용하면 더욱 쉽고 유용하답니다~
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있다.
switch "태경"{
case "친구1":
    print("친구1")
case "친구2":
    print("친구2")
case "친구3":
    print("친구3")
case "친구4":
    print("친구4")
default:
    print("누구세요...?")
}
