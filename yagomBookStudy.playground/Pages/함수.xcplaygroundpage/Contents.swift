import Foundation

// 스위프트에서 함수는 다른 언어들보다 훨씬 다양한 형태로 나타난다. 따라서 협업을 할시 팀원과 코딩 스타일을 상의해서 정해놓는 것을 권장한다.

// 함수와 메서드
// 함수와 메서드는 기본적으로 같다. 다만 상황, 위치에 따라 다른 용어로 부르는 것일 뿐이다.
// 구조체, 클래스, 열거형 등 특정 타입에 연관되어 사용하는 함수는 메서드라고 부르고 그냥 모듈 전체에서 전역적으로 사용할 수 있는 함수를 그냥 함수라고 부른다.
// 메서드 != 함수 가 아니다!

// 함수의 정의와 호출
// 조건문이나 반보만 같은 곳에서 처럼 소괄호를 생략할 수 없다(필수임)
// 스위프트의 함수는 재정의(오버라이드)와 중복 정의(오버로드)를 모두 지원한다. 따라서 매개변수의 타입이 다르면 같은 이름의 함수를 여러 개 만들 수 있다.
// 매개변수의 개수가 달라도 같은 이름의 함수를 만들 수 있다.

//func 함수이름(매개변수...) -> 변환 타입{
//    실행 구문
//} return 반환 값
// 위 코드는 기본적인 함수의 선언이다.

// 기본 형태의 함수 정의와 사용.

func hello(name: String) -> String {
    return "안녕하세요 \(name)씨!"
}

let hiPeter: String = hello(name: "peter")
print(hiPeter) // 안녕하세요 peter씨!

func introduce(name: String) -> String {
    "제 이름은 " + name + "입니다."
    // return "제 이름은 " + name + "입니다." 와 같은 동작을 한다.
    // 이렇게 return 키워드를 생략할 수 있자만 조건이 있다. 표현이 한줄이고 그 결괏값의 타입이 함수의 반환 타입과 같아야한다.
}

let introduceMySelf: String = introduce(name: "김태경")
print(introduceMySelf) //제 이름은 김태경입니다.

// 매개변수
// 매개변수는 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름을 의미한다.
// 인자는 함수를 실제로 호출할 때 전달하는 값을 의미한다.
// 그 예로 위에 코드를 보단 hello(name:) 에서 name은 매개변수고 "peter"나 "김태경"이 전달인자라 한다.

// 함수에 매개변수가 필요 없다면 매개변수 위치를 공백으로 비워둔다.

func helloWorld() -> String {
    return "안녕하세요! "
}
// 이런식으로!

// 매개변수가 여러개 라면 (,)쉼표로 구분한다. 주의할 점은 하나하나 이름을 붙여줘야한다.

func sayHi(myName: String, yourName: String) -> String {
    return "안녕 \(yourName)아 내 이름은 \(myName)이야 잘부탁해"
}

print(sayHi(myName: "김태경", yourName: "김태완"))
// 안녕 김태완아 내 이름은 김태경이야 잘부탁해

// 위에 코드를 보면 매개변수 이름을 사용했는데 이 뿐만 아니라 전달인자 레이블을 지정해 줄 수 있다.
// 보통은 함수 안에서 지정하는데 밖에서 전달인자 레이블을 따로 지정하면 함수 외부에서 매개변수의 역할을 명확히 할 수 있다.
// 매개변수 이름과 전달인자 레이블을 지정할 때는 아래 처럼 표현한다.

// func 함수이름(전달인자 레이블 매개변수 이름: 매개변수 타입, 전달인자 레이블 매개변수 이름: 매개변수 타입...(반복)) -> 반환타입 {
//    실행 구문
//    return 반환 값
//}

// 실제로 사용해보기!

func sayHello(from myName: String, to name: String) -> String {
    return "안녕하세요 \(name)님 저는 \(myName)입니다."
}
//from과 to라는 전달인자 레이블이 있고
// myName과 name이라는 매개변수 이름이 있는 sayHello 함수다.

print(sayHello(from: "태경", to: "태완"))


// 만약 이것도 싫다?
// c처럼 전덜인자 레이블을 사용하지 않고싶다면 와일드카드 식별자를 사용하자.
// 사실 이게 난 제일 편하다. 단 햇갈리게 작성한다면 뭐가 뭔지 모를 수가 있다.

func sayHello(_ name: String, _ times: Int) -> String{
    var result: String = ""
    
    for _ in 0..<times {
        result += "안녕하세요 \(name)" + " "
    }
    
    return result
}

print(sayHello("태경", 2))
// 안녕하세요 태경 안녕하세요 태경 (2라고 입력해서 두번 반복된다)
// c나 자바에서는 위에 처럼 바로 값만 넣어서 함수에 전달했다. 이렇게 하고 싶으면 와일드카드를 써라.

// 재밌는 것은 레이블 이름을 다르게 하면 함수의 이름 자체가 변경되서 중복 정의가 가능하다. 아래를 한번 봐보자.

func sayHello(to name: String, _ times: Int) -> String{
    var result: String = ""
    
    for _ in 0..<times {
        result += "안녕하세요 \(name)" + " "
    }
    
    return result
}

func sayHello(to name: String, repeatCount times: Int) -> String{
    var result: String = ""
    
    for _ in 0..<times {
        result += "안녕하세요 \(name)" + " "
    }
    
    return result
}

print(sayHello(to: "태경", 2))
print(sayHello(to: "태경", repeatCount: 2))
// 둘이 결과는 똑같다.

// 매개변수 기본값
// 매개변수 마다 기본값을 설정할 수 있다. 즉, 매개면수가 전달되지 않으면 기본값을 사용한다. 매개변수 기본값이 있는 함수는 함수를 중복 정의한 것처럼 사용이 가능하다
// 예를 들어 위에서 구현했던 times의 기본 값을 한번 적용시켜 보자.

func sayHello(_ name: String, _ times: Int = 3) -> String{
    var result: String = ""
    
    for _ in 0..<times {
        result += "안녕하세요 \(name)" + " "
    }
    
    return result
}

print(sayHello("김태경")) // 기본 값으로 3을 줬기 때문에 세번 출력된다.
print(sayHello("김태경", times: 2)) // 값을 2로 할당했기 때문에 두번 출력된다.

// 추가로 기본값이 없는 매개변수를 기본값이 있는 매개변수 앞에 사용하자.
// 기본값이 없는 매개변수는 대체로 함수를 사용함에 있어 중요한 값을 전달할 가능성이 높다.
// 무엇보다 기본값이 있는지와 상관 없이 중요한 매개변수는 앞쪽에 배치하자.


// 가변 매개변수와 입출력 매개변수
// 매개변수로 몇개에 값이 들어올지 모를때 가변으로 만들 수 있다. 배열처럼 사용할 수 있고 함수당 하나만 가질 수 있다.

func sayhelloToFriends(me: String, friends names: String...) -> String{ // ... 이렇게 준것이 가변적으로 만든 것이다.
    var result: String = ""
    
    for friends in names{
        result += "안녕 \(friends)!" + " "
    }
    
    result += "나는 " + me + "!"
    return result
}

print(sayhelloToFriends(me:"김태경", friends: "민지", "찬영", "달래")) // 안녕 민지! 안녕 찬영! 안녕 달래! 나는 김태경! 이렇게 ... 해두고 여러가지 입력이 가능함.

print(sayhelloToFriends(me: "김태경")) // 나는 김태경!

// 함수의 전달인자로 값을 전달할 때는 보통 값을 복사해서 전달한다. 값이 아닌 참조를 전달하려면 입출력 매개변수를 사용한다.
// 값과 참조에 대한 자세한 내용은 구조체와 클래스 부분에서 다룰 예정이다.

// 입출력 매개변수의 전달 순서는 아래와 같다.
// 1. 함수를 호출할 때 전달인자의 값을 복사한다.
// 2. 해당 전달인자의 값을 변경하면 1에서 복사한 것을 함수 내부에서 변경한다.
// 3. 함수를 반환하는 시점에 2에서 변경된 값을 원래의 매개변수에 할당한다.
// 참조는 &를 붙여서 표현한다.

// 입출력 매개변수의 활용

var numbers: [Int] = [1,2,3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func nonReferenceParameter(_ arr: inout [Int]){
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])

nonReferenceParameter(&numbers) //이것은 참조다!
print(numbers[1])

// 입출력 매개변수는 매개변수 기본값을 가질 수 없고, 가변 매개변수로 사용될 수 없다!. 또한 상수는 변경된 수 없으므로 입출력 매개변수의 전달인자로 사용될 수가 없다.
// 잘 사용하기면 문제는 없는데 이상하게 사용해버리면 메모리 안전을 위협한다. 따라서 사용에 있어 몇몇 제약이 있는데 그것은 스위프트 고급 내용에 나오니 나중에 다루겠다.

// 반환이 없는 합수.
// 함수는 특정 연산을 실행한 후 결괏값을 반환하는게 일반적이다. 하지만 반환하지 않는 함수도 있다.
// 반환이 없는 함수라면 없다는 의미인 void로 표기하거나 생략하자.

func 반환이없는함수(){
    print("이 함수는 반환이 없습니다.")
}

반환이없는함수()
// 이 함수는 반환이 없습니다.

func 반환이없는함수2(from myName: String, to yourName: String){
    print("안녕하세요 \(yourName)! 저는 \(myName)입니다!")
}
반환이없는함수2(from: "태경", to: "태완")


func 반환이없는함수3() -> Void {
    print("안녕히가세요")
}

반환이없는함수3()


// 데이터 타입으로서의 함수
// 스위프트의 함수는 일급 객체이므로 하나의 데이터 타입으로 사용할 수 있다.
// 뭔말이냐면 매개변수 타입과 반환 타입으로 구성된 하나의 타입으로 사용 할 수 있다는 말이다.
// (매개변수 타입의 나열) -> 반환 타입
// 아래와 같은 함수가 있다고 쳐보자.

func sayHi(name: String, times: Int) -> String {
    // ...
}

// sayHi함수 타입은 (String, Int) -> String 이다. 아래에 다음 함수도 알아보자.

func sayHiToMe(me: String, names: String...) -> String {
    //...
}

//sayHiToMe 함수의 타입은 (String, String) -> String 이다. 만약 매개변수나 반환 값이 없다면 Void 키워드를 사용한다.

func sayHiToMe(){
    // ...
}

// sayHiWorld 함수의 타입은 (Void) -> Void이다. 참고로 Void 키워드를 빈 소괄호의 묶음으로 표현할 수 있다. 다음 표현은 모두 (Void) -> Void
// (Void) -> Void
// () -> Void
// () -> ()

// 함수 타입의 사용

typealias Calculate = (Int, Int) -> Int
// 타입 별칭

func addTwo(_ a: Int, _ b: Int) -> Int {
    return a+b
}


func multiplyTwo(_ a: Int, _ b:Int) -> Int {
    return a*b
}

var math: Calculate = addTwo
// 타입 별칭으로 정의한 위와 같은 표현이다.

print(math(2,5))

math = multiplyTwo
print(math(2,5))

// 먼저 두 Int 값을 입력받아 계산 후 Int 값을 돌려주는 형태의 함수를 Calculate라는 별칭으로 만들었다.

// 전달인자로 함수를 전달받는 함수

func printMathResult(_ math: Calculate, _ a: Int, _ b: Int) {
    print("Result: \(math(a, b))")
}
printMathResult(addTwo, 5, 6)

// 중첩 함수
// 스위프트는 데이터 타입의 중첩이 자유롭다. '열거형'이 들어갈 수도 있고 클래스 안에 '클래스'가 들어갈 수도 있다. 클래스는 다음에 설명하겠다.


