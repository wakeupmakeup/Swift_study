// 클래스 vs 구조체/열거형 
// 둘이 어떨때 쓰는 것이 좋을까? 

// 클래스는 참조타입, 열거형과 구조체는 값 타입이라는 것이 가장 큰 차이
// 클래스는 상속이 가능하지만, 열거형과 구조체는 상속이 불가능! 

// 값타입과 참조 타입 비교

// 값 타입-> 데이터를 전달 할 때 값을 복사하여 전달함
// 참조 타입-> 데이터를 전달 할 때 값의 메모리 위치를 전달한다

struct ValueType { 
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫 번째 구조체 인스턴스 
let firstStructInstance = ValueType() 

// 두 번째 구조체 인스턴스에 첫 번재 인스턴스 값 복사
var secondStructInstance = firstStructInstance

// 두 번째 구조체 인스턴스 프로퍼티 값 수정하기. 
secondStructInstance.property = 2 

//두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한 별도의 인스턴스여서 
//두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도 첫번째에는 영향이 없다~ 

//확인해보자 

print("첫 번째 구조체 인스턴스 프로퍼티 : \(firstStructInstance.property)") //1 
print("두 번째 구조체 인스턴스 프로퍼티 : \(secondStructInstance.property)") //2

//클래스 인스턴스 생성 후 첫 번째 참조 생성 

let firstClassReference = ReferenceType() 

//두 번째 참조 변수에 첫 번째 참조 할당 
let secondClassReference = firstClassReference 
secondClassReference.property = 2

//두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에 
//두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
//첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨. 

print("첫 번째 클래스 레퍼런스 프로퍼티 : \(firstClassReference.property)") //2 
print("두 번째 클래스 레퍼런스 포로퍼티 : \(secondClassReference.property)") //2

// 값타입을 사용하는 경우 
// -> 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶은 경우
// -> 다른 객체 또는 함수 등으로 전달될 때 참조가 아니라 복사(값 복사) 할 경우
// -> 자신을 상속할 필요가 없거나, 다른 타입을 상속 받을 필요가 없는 경우