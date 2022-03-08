import Swift

// 클래스는 참조타입입니다.
// 타입이름은 대문자 카멜케이스를 사용하고 다중 상속은 되지 않습니다.

// 문법
// class 이름 {
// 구현부
// }

// 프로퍼티 및 메서드 구현

class Sample {
    //가변 프로퍼티
    var mutable: Int = 100
    
    let immutable: Int = 100
    
    static var type: Int = 100
    
    func instanceMethod(){
        print("instance method")
    }
    
    //타입 메서드
    // 상송시 재정의 불가 타입 메서드 - static
    static func classMethod(){
        print("type method - class")
    }
}

// 클래스 사용
// 인스턴스 생성 - 참조정보 수정 가능.

var mutableReference: Sample = Sample()

mutableReference.mutable = 200

//불변 프로퍼티는 생성 후 수정 불가능. 아래는 컴파일 오류가 난다.
// mutableReference.immutable = 200

//인스턴스 생성 = 참조정보 수정 불가
let immutableReference: Sample = Sample()

// 클래스의 인스턴스는 찹조 타입이어서 let으로 선언했어도 값 변경이 가능하다!
immutableReference.mutable = 200

// 그렇지만 참조 저보를 변경할 수는 없어요
// 아래는 오류가 발생합니다.
// immutablereference = mutableReference

// 아무리 참조 타입이라도 불변 인스턴스는 생성 후에 수정할 수 없습니다.
// 아래는 컴파일 오류 발생
// immutableReference.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

//인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용 할 수 없습니다!
// 컴파일 오류가 발생합니다.
// mutableReference.typeProperty = 400
// mutablereference.typeMethod()

// 그럼 이제 학생 클래스를 만들어 봅시다!

class Student {
    // 가변 프로퍼티
    var name: String = "알 수 없음"
    
    var `class`:String = "Swift"
    
    //타입 메서드
    
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    //인스턴스 메서드
    //self는 자신을 지칭하며 사용은 선택사항
    func selfIntroduce(){
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce() // 학생타입입니다.

//인스턴스 생성
var 태경:Student = Studnet()
태경.name = "김태경"
태경.class = "스위프트"
태경.selfIntroduce() //저는 스위프트반 김태경입니다.

//인스턴스 생성
let 태경2: Student = Student()
태경2.name = "또다른 나"
태경2.selfIntroduce()
