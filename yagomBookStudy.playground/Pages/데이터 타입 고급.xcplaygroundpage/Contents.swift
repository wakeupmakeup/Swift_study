import Foundation
// 타입 추론
/* 타입 추론은 말 그대로 Xcode 컴파일러가 알아서 타입을 결정해 준다는 것이다. 스위프트의 강력한 기능 중 하나지만 초심자는 남발 사용을 금하는 기증이기도 하다. (나중에 햇갈려서)*/

var name = "김태경"

// 이렇게 타입을 정해주지 않았지만 알아서 타입을 문자열로 맞춰준다. 타입이 String이기 때문에 나중에 다른 것으로 할당하면 오류가 발생한다. 아래 처럼.
name = 100

// 타입 별칭.
// Int나 Character같은 타입 이름을 바꿀 수 있다. 특히 Character처럼 긴 이름을 짧게 바꿔 사용하는데 용이하다.

typealias Char = Character
//이런 식으로 변경!

let yourFirstName: Char = "김"

// tuple
// 튜플은 타입의 이름이 따로 지정되 있지 않은 프로그래머 마음대로 만드는 타입이다.
// 스위프트와 파이썬의 튜플이 유사하다. 일정 타입의 나열만으로 튜플 타입을 생성할 수 있다.

var person: (String, Int, Double) = ("김태경", 81, 181.00)

// 인덱스를 통해서 값을 빼 올 수 있다.
print("이름: \(person.0), 나이:\(person.1), 신장:\(person.2)")

person.1 = 99
person.2 = 181.2 // var이기 때문에 도중에 변경 가능

print("이름: \(person.0), 나이:\(person.1), 신장:\(person.2)")

// 지금은 간단해서 잘 알아볼 수 있지만 나중에 코드가 길어지거나 복잡해질 경우엔 뭐가 뭔지 알 수가 없게 될 수도 있다. 따라서 각 요소에 이름을 정해줄 수도 있다

var person2: (name: String, age: Int, height: Double) = ("김태완", 71, 174.2)

// 아까는 인덱스 였지만 지금은 이름을 통해서 값을 빼올 수 있다. 이게 더 정확하고 가독성이 좋다.

print("이름: \(person2.name), 나이:\(person2.age), 신장:\(person2.height)")

person2.age = 99
person2.2 = 178.5 //아까 처럼 인덱스로 값을 빼오는 것도 가능하긴 하다.

print("이름: \(person2.0), 나이:\(person2.1), 신장:\(person2.2)")


// 튜플의 불편한은 이뿐만이 아니다. 키워드가 따로 없다보니 사용에 불편함이 생기는데 이를 타입 별칭이 해결해준다.

typealias Persontuple = (name: String, age: Int, height: Double) //오호! 이렇게 선언해주면 일일히 입력할 필요가 없다!

let 태경: Persontuple = ("김태경", 81, 181.00)
let 내동생: Persontuple = ("김태완", 69, 172.11)

print("이름: \(태경.name), 나이:\(태경.age), 신장:\(태경.height)")
print("이름: \(내동생.name), 나이:\(내동생.age), 신장:\(내동생.height)")
// 와우!


// 컬렉션형.
// 튜플뿐만 아니라 배열, 딕셔너리, 셋 같은 많은 데이터를 묶어서 저장, 관리 할 수 있는 기능들이 있다.


// 배열
// 배열은 같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 컬렉션 타입이다. 각기 다른 위치에 같은 값이 들어 갈 수도 있음을 기억하자.
// let으로 하면 변경 불가능한 배열 var로 하면 변경 가능한 배열이 탄생한다. 배열을 선언하는 방법은 다양하다.

// 선언해보기

var 배열: Array<String> = ["문자열1", "문자열2", "문자열3", "문자열4"]
//이것이 배열의 기본형이다. 대괄호를 사용해서 배열임을 표현하자. 그리고 Array<타입형>의 축약형은 [타입형]으로 가능하다. 아래처럼.

var 축약표현배열: [String] = ["문자열1", "문자열2", "문자열3", "문자열4"]
//원래는 배열1과 축약표현배열1은 완전히 다른 것이지만 이해를 돕기위해 이렇게 선언했다.

var 빈배열표현1: [Any] = [Any]()
var 빈배열표현2: [Any] = Array<Any>()
//()는 이니셜라이저라고 불리며 이렇게 하면 빈 배열을 만들 수 있다. 그리고 이 표현도 축약 표현이 존재하는데 다음과 같다! 위에 나온 두 표현은 같은 표현이다.

var 축약표현빈배열: [Any] = [] //Wow! so simple!
print(축약표현빈배열.isEmpty) //진실!
print(배열.count) // 4

// 다음은 여러가지 메서드와 프로퍼티를 사용한 배열의 응용이다.

var names: [String] = ["태경", "민수", "정희", "민희"]

print(names[2]) // 정희가 출력된다.
//  배열은 인덱스로 접근이 가능하다! 인덱스는 처음에 0 부터 시작하며 처음과 끝은 first, last 프로퍼티로 꺼내올 수 있다.

names[2] = "제니"
//var로 만들었기 때문에 정희가 제니로 변한다.

print(names[2])
print(names[4])
// 인덱스 범위를 넘어섰기 때문에 오류가 난다.

names[4] = "엘사"
// 똑같다. 범위를 넘어섰기 때문에 오류가 난다.

names.append("엘사")
// 배열 마지막에 "엘사"가 추가된다!

names.append(contentsOf: ["존", "맥스"])
// 맨 마지막에 "존"과 "맥스"가 추가된다!

names.insert("해피", at:2)
// 인덱스 2번에 해당 값이 삽입된다.

names.insert(contentsOf: ["지민", "민수"], at: 5)
// 인덱스 5번 위치에 "지민"과 "민수"가 삽입된다.

print(names[4])
print(names.firstIndex(of: "태경"))
print(names.firstIndex(of: "배열에없는값"))
print(names.first)
print(names.last)

let firstItem: String = names.removeFirst()
// 배열 names의 첫번째(0번 인덱스)를 삭제한다. 그리고 인덱스들을 다시 하나씩 끌어온다.  0~9였던것이 0~8이 되면서 한자리씩 당겨짐.

let lastItem: String = names.removeLast()
// 마지막 부분만 지워졌기 때문에 벼일이 밀리거나 당겨지지 않는다.

let indexZeroItem: String = names.remove(at:0)
// at:?을 사용해서 설정한 인덱스 요소를 삭제할 수 있다.지금은 0 이니 처음 값이 삭제되면서 한자리씩 당겨진다.

// 딕셔너리
// 딕셔너리는 요소들이 순서 없이 키와 값의 쌍으로 구성되는 컬렉션 타입이다. 마치 사물함과 사물함 열쇠 처럼.
// 실제 사물함 열쇠처럼 키가 하나거나 여러개 일 수있다. 다만 사물함은 단 하나만 존재한다. 한 사물함에 맞는 열쇠는 여러개일 수 있지만 그 열쇠로 다른 사물함을 열 수 없는 것과 마찬가지다.
// 이니셜라이저()나 리터럴 문법으로 빈것을 만들 수 있고 count로 셀 수도 있다.


typealias StringAndIntDictionary = [String: Int]
// 타일 별칭으로 계속 해서 적어야하는 데이터 타입을 간단하게 만들 수 있다.

var 딕셔너리예시: Dictionary<String,Int> = Dictionary<String,Int>()
// 이것이 딕셔너리의 기본형이다. var(let) 이름: Dictionary<데이터 타입1: 데이터 타입2> = Dictionary<데이터 타입1, 데이터 타입2>()
//()이니셜라이저로 빈 딕셔너리를 만들었다. 하지만 한번 만들때 마다 이렇게 길게 적어야할까? 배열과 마찬가지로 축약형이 존재한다.

var 축약형딕셔너리예시: [String: Int] = [String: Int]()
// 위에 나와있는 선언과 똑같은 기능을 한다. 앞서 타입 별칭을 선언하였으니 이용해보자

var 별칭축약형딕셔너리예시: StringAndIntDictionary = StringAndIntDictionary()
// 더 간단해졌다. 다만 이를 별칭을 이용할시 뭐가 뭔지 알 수 있게 이름을 제대로 설정하자.

var 축약형딕셔너리예시2: [String: Int] = [:]
// 키와 값 타입을 정확히 명시해줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있다.

var 축약형딕셔너리예시3: [String: Int] = ["태경": 100, "민수": 200, "민성": 300]
// 초깃값을 줄 수도 있다

print(딕셔너리예시.isEmpty) // True
print(축약형딕셔너리예시3.count) // 3

// 배열과는 다르게 내부에 없는 키로 접근해도 오류를 반환하지 않는다 다만 nil을 반환한다.

// 다음은 딕셔너리의 응용 사용들이다!

var numberForName: StringAndIntDictionary = ["태경": 100, "민수": 200, "민성": 300]

print(numberForName["민수"]) //200
print(numberForName["없는이름"]) // nil

numberForName["민수"] = 150
print(numberForName["민수"]) //150으로 변한다. var로 선언했기 때문에

numberForName["맥스"] = 999
//맥스라는 새로운 키로 999라는 값을 추가했다.
print(numberForName["맥스"])

print(numberForName.removeValue(forKey: "태경"))
// 100 삭제되었다! 하지만 또 한번 할 경우 이미 삭제 됐기 때문에 nil이 나온다.

print(numberForName.removeValue(forKey: "태경"))
// nil, 만약 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수 있다.

print(numberForName["태경", default: 0])
// 기본값 0!

// 세트(set)
// 세트는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입이다.
// 쉽게 말하자면 같은 종류의 구슬을 주머니에 담는 것으로 이해하자. 그래서 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용한다.
// 또 세트의 요소로는 해시 가능한 값이 들어와야 한다. (이게 뭔소린가?) -> 스위프트 표준 라이브러리의 Hashable 프로토콜을 따른다는 것을 의미한다.
// 배열, 딕셔너리와 같이 빈 세트는 이니셜라이저나 리터럴 문법으로 만들 수 있고 count로 셀 수 있다. 하지만 축약형은 따로 존재하지 않는다!

var 세트선언예시: Set<String> = Set<String>()
// 빈 세트 생성

var 세트선언예시2: Set<String> = []
// 빈 세트 생성

var setNames: Set<String> = ["태경", "민수", "민성", "태완"]
// 배열처럼 대괄호를 사용한다. 그래서 햇갈릴 수 있는데 조심하자 재밌는 것은 타입 추론을 사용하면 자동으로 배열로 인식하니 알아두자.

var numbers = [100,200,300]
print(type(of:numbers)) // Array<Int>로 출력된다.

print(setNames.isEmpty) // false
print(setNames.count) // 3 - 중복된 값은 허용하지 않는다(안세진다)

//다음은 세트의 응용 사용이다.

print(setNames.count)
setNames.insert("제니")
print(setNames.count)
// 3에서 4로 변경된다(늘어난다)

print(setNames.remove("태경")) // 태경
print(setNames.remove("없는이름"))
// 없는 이름을 지울경우 오류가 나지 않고 nil을 반환한다.

// 세트는 또한 집합관계를 표현하고자 할때 유용하다. 교집합, 합집합과 같은 연산도 가능하며 sorted() 메서드를 통해서 정렬된 배열을 반환해줄 수도 있다.

let 영어수업학생들: Set<String> = ["학생1", "학생2", "학생3"]
let 국어수업학생들: Set<String> = ["학생1", "학생4", "학생5", "학생6", "학생7", "학생8"]

// 교집합
let 교집합세트: Set<String> = 영어수업학생들.intersection(국어수업학생들)

// 여집합의 합(배타적 논리합)
let 여집합의합세트: Set<String> = 영어수업학생들.symmetricDifference(국어수업학생들)

// 합집합
let 합집합세트: Set<String> = 영어수업학생들.union(국어수업학생들)

// 차집합
let 차집합세트: Set<String> = 영어수업학생들.subtracting(국어수업학생들)
print(교집합세트)
print(합집합세트)
print(여집합의합세트)
print(차집합세트)

print(합집합세트.sorted())
// 정렬도 가능하다.

// 집합 활용 예시!

let 새: Set<String> = ["바둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류) // 새와 포유류의 합집합

print(새.isDisjoint(with: 포유류))
// 서로 배타적인지? -> 참

print(새.isSubset(of: 동물))
//새가 동물의 부분집합인가요? -> 참

print(동물.isSuperset(of: 포유류))
// 동물은 포유류의 전체집합인가요? -> 참

print(동물.isSubset(of: 새))
// 동물은 새의 전체집합인가요? -> 참

// 컬렉션에서 임의의 요소 추출과 뒤섞기!
// randomElement() 메서드와 shuffle()메서드 그리고 shuffled() 메서드를 이용한 예시들이다.
// randomElement()는 컬렉션에서 임의의 요소를 추출한다. shuffle()은 컬렉션에 요소를 임의로 뒤섞는다. shuffled()눈 자신의 요소는 그대로 두고 새로운 컬렉션에 순서를 섞어서 반환한다

var array: [Int] = [0,1,2,3,4]
var set: Set<Int> = [0,1,2,3,4]
var dictionary: StringAndIntDictionary = ["a": 1, "b": 2, "c": 3]
var string: String = "string"

print(array.randomElement()) // 임의의 요소!
print(array.shuffled()) // 뒤죽박죽된 배열 - array 내부의 요소는 그대로 있다. 단지 정렬만 무작위로 되있을 뿐이다.
print(array)
array.shuffle() // array 자체를 뒤죽박죽으로 뒤섞기
print(array) // 마구 섞인 배열 출력하기

print(set.shuffled()) // 세트를 뒤섞으면 배열로 반환해준다.
// set.shuffle() 이러면 오류가 나는데 왜냐면 세트는 순서가 없기 때문에 스스로 뒤섞을 수 없다.
print(dictionary.shuffled()) // 딕셔너리를 뒤섞으면 (키, 값)이 쌍을 이룬 투플의 배열로 반환해준다.
print(string.shuffled()) // String도 컬렉션이다.



// 열거형
// 열거형은 연관된 항목들을 묶어서 표현할 수 있는 타입이다. 열거형은 배열이나 딕셔너리 같은 타입과 다르게 프로그래머가 정의해준 항목 값 외에는 추가/수정이 불가하다. 그렇기 때문에 딱 정해진 값만 열거형 값에 속할 수 있다.

// 쉽게 말해 전체가 let으로 정의한 것과 비슷하다
// 열거형은 다음과 같은 상황일때 요긴하게 쓰인다.
// 1 제헌된 선택지를 주고 싶을 때(엄마가 좋아 아빠가 좋아?) 2. 정해진 값 외에는 입력받고 싶지 않을 때(오빠 나 오늘 예뻐?) 3. 예상된 입력 값이 한정되어 있을 때
// 다른 언어와 다른점은 스위프트에서 열거형은 값을 가질 수도 아니면 없을 수도 있다. c에서는 기본적으로 정수형으로 세팅이 되어 있었다면 스위프트에선 각 고유의 값들이 모두 인정된다. 그리하여 오류를 원천 차단하는 기능이 생긴다. 이런 열거형은 switch 구문과 만났을때 멋지게 활용이 가능하다.

// 기본 열거형
enum sex {
    case man
    case woman
}

// sex라는 이름을 갖는 열거형에는 남자와 여자라는 항목이 있다. 각 항목은 그 자체가 고유의 값이며, 항목이 여러 가지라서 나열하기 귀찮거나 어렵다면 한줄에 다 표현이 가능하다.

enum sex_2{
    case man, woman
}
// 이런식으로~
// 아니면 열거형 변수를 생성하고 값을 할당할 수도 있다.

var 성별: sex = sex.man
var 성별: sex = .man
// 둘이 같은 표현이다. 하지만 xcode상에선 오류가 날 것이다 (중복해서 사용해서)

성별 = .woman
// 같은 타입인 sex 내부의 항목으로만 값을 변경해줄 수 있다. 다른 것이 나오면? 아래처럼 오류가 뜬다.

성별 = .기존에없는값
// Type 'sex' has no member '가존에없는값'


// 원시 값
// 열거형의 각 항목은 자체로도 하나의 값이지만 항목의 원시 값도 가질 수 있다.
// 즉, 특정 타입으로 지정된 값을 가질 수 있다는 말이다.

enum sex_3 {
    case man
    case woman
}

let mySex: sex_3 = .man

print("저의 성별은 \(mySex) 입니다")
// 저의 성별은 man 입니다.

enum weekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: weekDays = weekDays.fri
print("오늘은 \(today.rawValue)요일입니다.)"


// 열거형의 원시 값 일부 지정 및 자동 처리
enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college
    case university
    case graduate
}

let 교육수준: School = School.university
print("저의 최종학력은 \(교육수준.rawValue) 졸업입니다.")

print(School.elementary.rawValue) // 초등학교

enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10
}
print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)") // 0, 1, 2, 10
// 따로 지정하지 않아도 순서대로 0, 1, 2로 되었다. 마지막 ten은 10으로 할당했기 때문에 저렇게 나온 것이다.


// 연관 값
// 열거형을 좀더 확장해서 각 case에 나온 것들 중 서로 연결되는 값을 가질 수 있다. 그리고 소괄호()로 묶어 표현한다.
// 다음 예시는 음식점을 표현한 것이다.

enum mainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: mainDish = mainDish.pasta(taste: "크림") // 크림 파스타
dinner = .pizza(dough: "오리지널", topping: "불고기") // 불고기 오리지널 피자
dinner = .rice  // 밥
dinner = .chicken(withSauce: true) // 양념 치킨

// 만약 식장의 재료가 한정적이라면?

enum PastaTaste {
    case cream, tomato
}

enum PizzaTopping {
    case 페퍼로니, 치즈, 베이컨
}

enum PizzaDough {
    case 치즈크러스트, 오리지널, 씬
}

enum MainDish {
    case paste(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var dinner_2: MainDish = .paste(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: PizzaDough.치즈크러스트, topping: PizzaTopping.베이컨)
