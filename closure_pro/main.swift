//클로저 고급 - 다양한 클로저 표현은? 

//클로저는 아래 규칙을 통해서 다양한 모습으로 표현이 가능하다. 

 /* 
 1. 후행 클로저 : 함수의 매개변수 마지막으로 전달되는 클로저는 후행클로저로 함수 밖에 구현할 수 있다. 
 2. 반환타입 생략 : 컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략 할 수 있다. (타입 유추)
 3. 단축 인자 이름 : 전달인지의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름을 사용 할 수 있다. 
 4. 암시적 반환 표현 : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략해도 반환 값으로 취급한다. 

 기본 클로저 표현은 아래와 같다
*/ 

// 클로저를 매개변수로 갖는 함수 calculated(a:b:method:)와 결과값을 저장할 변수 result 선언
func calculate(a: Int, b: Int, method: (Int, Int)->Int) -> Int {
    return method(a,b)
}

var result: Int

// 후행 클로저 
// 클로저가 함수의 마지막 전달인자일때, 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현! 

 result = calculate(a:10, b:10){(left: Int, right: Int) -> Int in
    return left + right 
}

print(result) //20 

// 반환타입 생략 

result = calculate(a:10, b:10, method:{(left:Int, right:Int) in
    return left + right
})

print(result) // 20

// 후행클로저와 함께 사용 가능하다. 
result = calculate(a:10, b:10) {(left: Int, right: Int) in 
return left+right
}

print(result) 

// 단축 인자이름 

result = calculate(a: 10, b: 10, method: {
    return $0 + $1 //$0 -> a, $1-> b라는 뜻임. 
})

print(result) // 20


// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result) // 20

// 암시적 반환 표현 (반환 값이 있다면 마지막 줄의 결과값은 암시적으로 취급함) 

result = calculate(a: 10, b: 10) {
    $0 + $1  // 단축인자 표현
}

print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있습니다 -> 난 이게 더 좋은것 같다. 
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20



// 축약 전과 축약 후 

//축약 전
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20

//* 너무 축약된 코드는 타인이 보거나, 시간이 지난 뒤에 볼 때 명시성이 떨어질 수 있으므로 적정선에서 축약하도록 합시다!