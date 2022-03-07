import Swift

// 옵셔널 추출은 뭔데? -> 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는 것


// 옵셔널 방식
// 옵셔널 바인딩
// 1. nil 체크 + 안전한 추출
// 2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내온다.
// 3. if-let 방식 사용하기.

func printName( _name: String) {
    print(name)
}

var myName: String? = nil

// printName(myName)
// 전달되는 값의 타입이 달라서 컴파일 오류 발생함.


if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else{
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능하다!
// 상수 사용범위를 벗어났기 때문에 컴파일 오류가 발생한다
// printName(name)

//,를 사용해서 한번에 여러 옵셔널을 묶을 수 있음. 모든 옵셔널에 값이 있을 때만 동작함

myName = "태경"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

//yourName이 nil이기 때문에 실행되지 않는다. 그래서 값을 넣자!
yourName = "친구1"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// 태경 and 친구1


//강제추출-> 옵셔널에 값이 있는지 없는지 확인 안하고 바로 꺼내는 방식. 만약 없을경우 오류 발생해서 추천은 안한다.

var myName: String? = 태경
var youName: String! = nil

printName(myName!) // 태경
myName = nil

//print(myName!)
//강제추출시 값이 없으므로 런타임 오류 발생
yourName = nil

//printName(yourName)
//nil 값이 전달되기 때문에 런타임 오류 발생



