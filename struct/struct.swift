import Foundation

//구조체란?
//스위프트에서 대부분의 타입은 구조체로 이루어져 있어요
// 구조체는 값타입이랍니다.
// 타입이름은 대문자 카멜케이스를 사용해요.
// 카멜케이스가 뭐지? -> 흔히 우리는 스네이크, 파스칼, 카멜 케이스라고 분류하는데 예시로
// 스네이크 -> var snake_case; 이런식으로 언더바가 들어있는 표현을 스네이크
// 파스칼 -> var PascalCase; 이런식으로 첫 글자와 중간 글자들이 대문자인경우
// 카멜 -> var camelCase 중간 글자들은 대문자지만 첫 글자가 소문자인 경우에는 낙타와 모양이 비슷하다고 해서 카멜케이스라고 한다. (별걸다...)

// 구조체 문법
// 구조체 정의 : 다른 언어들 처럼 struct로 시작한다.
// struct 이름 {
// 구현부
// }    인 형식임.

struct Sample {
    var myAge: Int = 25
    // 가변 프로퍼티(값 변경 가능)
    
    
// 프로퍼티-> 속성이라는 뜻.
// 객체가 지닌 속성/성질/특성/상태/변수 등을 나타내는데 즉, 객체들이 고유하게 유지하는 데이터란 말씀.
    // 쉽게 어떤 타입안에 들어있는 변수를 프로퍼티라고 생각. 그리고 타입안에 들어가 있는 함수를 메서드라고 생각하자.
    
    let myName: String = "김태경"
    // 불변 프로퍼티(값 변경 불가)
    
    static var typePropertp: Int = 100
    // 타입 프로퍼티(static 키워드 사용 : 타입 자체가 사용하는 프로퍼티) -> 이게 뭔말?
    
    
    // 인스턴스 메서드(인스턴스가 사용하는 메서드)
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드(static 키워드 사용 : 타입 자체가 사용하는 메서드) -> 아하. 그러니까 지금 구조체 타입은 Sample이니 Sample로 불러야 사용되는 것이라는 뜻임.
    static func typeMethod(){
        print("type method")
    }
}

// 구조체 사용하기.

//가변 인스턴스 생성.
//인스턴스는? -> 이해하기 쉽게 일반적인 단어로 설명하자면, 계산 문제를 '입력과 출력이 명확히 기술된 것'으로 수학적으로 정의할 때, 계산 문제의 입력이 될 수 있는 것은 무한히 많이 존재하고 그것들 하나하나를 해당 계산 문제의 인스턴스라고 부른다

var mutable: Sample = Sample()

mutable.myAge = 26

// 불변 프로퍼티는 인스턴스 생성 후 수정 불가능.
//아래는 컴파일 오류 발생
// mutable.myName = "내이름은 변경 할 수 없다."

// 불변 인스턴스

let immutable: Sample = Sample()

//불변 인스턴스는 아무리 가변 프로퍼티라도
// 인스턴스 생성 후에 수정 불가능합니당.
// 아래는 컴파일 오류 발생
// immutable.myAge = 30
// immutable.myName = "바꿀 수 있다면 바꿔보시지?"

//xkdlq vmfhvjxl alc aptjem
Sample.typeProperty = 300
Sample.typeMethod()

//인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없습니다.
// 다음은 컴파일 오류를 발생시킵니다.

//mutable.typeProperty = 400
//mutable.typeMethod()


// 학생 구조체를 만들어 보자!

struct Student {
    var name: String = "알 수 없음"
    var `class`: String = "스위프트"
    //왜? ` `(option + ~ 누르기) 으로 묶나? -> 이렇게하면 이름으로 사용할 수 있다.
    
    //타입 메서드
    static func introduce(){
        print("학생타입입니다.")
    }
    
    
    //인스턴스 메서드
    func introduce() {
        print("저는 \(self.class)반 \(name)입니다.")
        //엥? self라는게 있나? -> 이것은 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다~
        
    }
}

// 타입 메서드 사용하기
Student.introduce() // 학생타입입니다.

//가변 인스턴스 생성
var taekyung: Student = Student()
taekyung.name = "태경"
taekyung.class = "스위프트"
taekyung.introduce() // 저는 스위프트반 태경입니다.

// 불변 인스턴스 생성하기.
let taekyung2: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경이 불가능하다.
// 아래는 컴파일 오류발생시킴
// taekyung.name = "태경2"
taekyung2.introduce() // 저는 스위프트반 알 수 없음입니다.
