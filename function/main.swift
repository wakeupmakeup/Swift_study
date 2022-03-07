import Swift

/*/ 함수
 함수 선언의 기본형태
 func 함수이름(매개변수1이름: 변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
 함수 구현부
 return 반환값
 }
 
 */

func sum(a: Int, b: Int) -> Int {
    return a + b
}


//반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ... ) -> void {
// 함수 구현부
// return }

func printMyName(name: String) -> Void {
    print(name)
}
//이렇게 하거나 아예 생략을 할 수도 있음.

func printYourName(name: String) {
    print(name)
}


// 매개변수가 없는 함수
// func 함수이름() -> 반환타입 {
// 함수 구현부
// return 반환값
// }

func maximumIntegerValue() -> Int {
    return Int.max
}

// 매개변수와 반환값이 없는 함수
// func 함수이름() -> Void {
// 함수 구현부
// return
// }

func hello() -> Void {
    print("hello")
}

// func 함수이름() {
// 함수 구현부
// return
// }

func bye() {
    print("bye")
}

//함수의 호출.

sum(a: 3, b: 5) // 8

printMyName(name: "김태경")

printYourName(name: "사랑하는 당신은 참 이름이 뭐였죠?")

maximumIntegerValue() // int의 최댓값

hello() // hello

bye() //bye

//#####################################################################################################################

//기본값을 갖는 매개변수는 매개변수 목록 중에 뒤에 위치하는게 좋다.
//func 함수이름(매개변수1이름: 타입, 매개변수2이름: 타입 = 매개변수 기본값 ... ) -> 반환타입 {
// 함수 구현부
// return 반환값
// }

func greeting(friend: String, me: String = "태경") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
greeting(friend: "친구1") // Hello 친구1! I'm 태경
greeting(friend: "친구1", me: "태경2")

//전달인지 레이블은 함수를 호추할때 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용한다.
//func 함수리음(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 에리블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
// 함수 구현부
// return
// }

// 함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용해라
func greeting(to friend: String, from me: String){
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "친구1", from: "me")

// 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용 가능하고 가면 매개변수는 함수당 하나만 가질 수 있음!
// func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입. . .) -> 반환타입 {
// 함수 구현부
// return
// }

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
/// ... 을 넣어서 사용 ㄱㄱ

print(sayHelloToFriends(me: "태경", friends: "친구1", "친구2", "친구3"))
// Hello ["친구1", "친구2", "친구3"]! I'm 태경!

print(sayHelloToFriends(me: "태경"))
// Hello []! I'm 태경!

// 데이터 타입으로서의 함수

//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어임. (패러다임 - 어떤 한 시대 사람들의 견해나 사고를 근본적으로 규정하고 있는 테두리로서의 인식의 체계, 또는 사물에 대한 이론적인 틀이나 체계를 의미하는 개념)
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고 매개변수를 통해 전달이 가능하다!

//함수의 타입표현
//반환타입을 생략할 수 없다.
// (매개변수1타입, 매개변수2타입 ... ) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("친구1", "나") // Hello 친구1! I'm 나

someFunction = greeting(friend:me:)
someFunction("친구1", "나") // Hello 친구1! I'm 나

// 타입이 다른 함수는 할당할 수 없다.

func runAnother(function: (String,String) -> Void) {
    function("친구1","친구2")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)















