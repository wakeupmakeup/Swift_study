// 문자열 보간법 -> 프로그램 실행 중 변수나 상수의 값을 표현하기 위해 사용. 사용법은 \()아런식으로 사용.

import Swift

let age: Int = 10

"안녕하세요! 저는 \(age)살입니다."

print("안녕하세요 저는 \(age + 5)살입니다.") //보간법 내에서 계산도 가능
print("\n#########################\n")


class Person {
    var name: String = "태경"
    var age: Int = 25
}

let 태경: Person = Person()

print(태경)
print("\n####################\n")

dump(태경)

//상수와 변수
//상수의 선언
// let name: type = 값

//변수의 선언
// var name: type = 값

//만약 값의 타입이 명확하다면 타입은 생략 가능.
// let name = 값
// var name = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 값을 할당 할 수 있지만 상수는 불가능하다."
//constant = "이렇게 하면 오류가 발생한다."

//상수 선언 후, 값 할당하기.
//선언을 하고 나중에 값을 할당하려는 상수나 변수는 반드시 타입을 명시하자.

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

//선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다. 오류발생.

//변수도 물론 차후에 할당하는 것이 가능하다.
var nickName: String

nickName = "태경"

//변수에 다른값을 다시 할당해도 문제없다.

nickName = "멋있는 태경?"

/* 기본 데이터 타입 */

// 스위프트의 기본 데이터 타입.
// Bool, Int, Uint, Float, Double, Character, String

// Bool

var someBool: Bool = true
someBool = false
//someBool = 0
//someBool = 1 이러면 바로 오류남. bool에 int형의 값이 들어갔기 떄문임.

//Int
var someInt: Int = -100
//someInt = 100.1 //int는 정수 값만 할당하고 실수값은 안된다.

// UInt
var someUInt: UInt = 100 //부호가 없는
//someUInt = -100 이러면 오류남. 왜? UInt는 int와는 다르게 0부터 양의 수만 표시 가능하기 떄문이다.
//someUInt = someInt //이래도 안된다. int, Uint둘을 다르게 인식하고 교환이 까다롭다. ok?


// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat

// Character
var someCharacter: Character = "😔"
//someCharacter = "😚" 이런것도 되네?!

//String
var someString: String = "호호호 😄"
someString = someString + "웃으면 복이와요"
print(someString)

// 데이터 타입을 변환시키는 방법도 있다. 스위프트는 각 타입의 공유가 까다롭고 엄격한것을 알 수 있다.


/* Any, AnyObject, nil
Any - 스위프트의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜(컴퓨터들 간의 원활한 통신을 위해 지키기로 약속한 규약)
 nil - 없음을 의미하는 키워드 -> NULL이랑 똑같음.
*/

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능하다."
someAny = 123.45

//let someDouble: Double = someAny

//MARK: - AnyObject

class someClass {}

var someAnyObject: AnyObject = someClass()

//MARK: - nil

// someAny = nil
// someAnyObject = nil

// 재밌는건 위처럼 할당하면 오류가 발생한다. 그 뜻은 아무거나 올 수는 있지만 빈 값은 올 수가 없다는 이야기다.


// 컬렉션 타입. 배열, 딕셔너리, 셋 같은것들.

/* 배열 - 순서가 있는 리스트 컬렉션
   딕셔너리 - 키와 값의 쌍으로 이루어진 컬렉션
   셋 - 순서가 없고 멤버가 유일한 컬렉션 (보자기 안에 유리구슬) */

// Array(배열)

//빈 Int 배열 생성
var integers: Array<Int> = Array<Int>()

/*
 위와 동일한 표현들. 다 알필요는 없고 그냥 제일 간단한 축약 표현을 찾아서 쓰자.
 var integers: Array<Int> = [Int]()
 var integers: Attay<Int> = []
 var integers: [Int] = Array<Int>()
 var integers: [Int] = [Int]()
 var integers: [Int] = [] -> 나는 이것이나
 var integers = [Int]() -> 아니면 이것을 쓸 생각이다.
 */

integers.append(1)
integers.append(100)
//integers.append(101.1) -> 이건 오류남 왜? Int 타입에 실수를 넣어서.

integers.contains(100) //들어있냐? 검사하는것 있으면 트루 없으면 거짓 반환
integers.contains(99)

integers.remove(at:0) //0번째 배열값을 삭제해줘
integers.removeLast() //마지막 (이하동일)
integers.removeAll()

integers.count // 몇개 있는지 세기 (위에서 다 지워버렸으니 0이 나옴)

//맴버 교체
integers[0] = 99

//Array<Double>와 [Double]은 같은 표현임
var doubles: Array<Double> = [Double]()

//String
var strings: [String] = [String]()

//빈 char 배열 생성
//[]는 새로운 빈 배열
var chars: [Character] = []

//let을 사용하여 배열을 선언하면 불변의 배열임.
let immutableArray = [1,2,3]
//immutableArray.append(4)
//immutableArray.removeAll() -> let으로 하면 변겅이 불가능해서 사용불가능.

//Dictionary
// Key가 String 타입이고 값이 Any인 빈 딕셔너리 생성을 해보자.


var ad: Dictionary<String, Any> = [String: Any]() //키가 스트링 타입이고 값이 any이면서 빈 딕셔너리 ad = anyDictionary임.
/*
 위와 동일한 표현들, 제일 간단하고 편한 것을 쓰려고 노력하자.
 var ad: Dictionary <String, Any> = Dictionary<String, Any>()
 var ad: Dictionary <String, Any> = [:]
 var ad: [String: Any] = Dictionary<String, Any>()
 var ad: [String, Any] = [String: Any]()
 var ad: [String: Any] = [:]
 var ad = [String: Any]() -> 난 이것을 쓸 예정.
 */

ad["key1"] = "value"
ad["key2"] = 100



ad["key1"] = "dictionary"


ad.removeValue(forKey: "key2")

ad["key1"] = nil //remove와 유사한 표현임.


let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "태경", "gender":"남자"]

//emptyDictionary["key"] = "value"
// let someValue: String = initalizedDictionary["name"]

//Set

//빈 Int set 생성
var integerSet: Set<Int> = Set<Int>() //축약문법이 없어서 이렇게만 사용가능.
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

//지금 보면 set에선 중복된 값은 보장하지 않는다. 그래서 99의 세개가 하나로만 인식함.



integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()
integerSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [6,7,8,9,10]

let union: Set<Int> = setA.union(setB)
let sortedUnion: [Int] = union.sorted()
let intersection: Set<Int> = setA.intersection(setB)
let subtracting: Set<Int> = setA.subtracting(setB)
