// 클로저 
// 클로저는 실행가능한 코드 블럭이다.
// 함수와 다르게 이름정의는 필요하진 않는데 매개변수 전달과 반환 값이 존재 할 수 있다는 점이 동일하다 
// 함수는 이름이 있는 클로저라고 할 수 있다. 
// 일급객체로 전달인자, 변수, 상수 등에 저장 및 전달이 가능하다 

// 기본 문법은? 

{(매개변수 목록) -> 반환타입 in
    실행코드
} //로 이뤄져있다. 

// 함수를 사용한다면 
func sumFunction(a: Int, b:Int) -> Int {
    return a+b
} //였지만 

// 클로저 사용 
// sum이라는 상수에 클로저를 할당 
let sum: (Int, Int) -> Int = {(a: Int, b: Int) in
    return a+b
}

let sumResult: Int = sum(1,2)
print(sumResult) // 3 

//함수의 전달인자로서의 클로저
//클로저는 주로 함수의 전달인자로 많이 사용됩니다. 
//함수 내부에서 원하는 코드블럭을 실행 할 수 있습니다. 

let add:(Int,Int)-> Int 

add = {(a:Int, b: Int) in
    return a+b
}

ler substract: (Int, Int) -> Int
divide = {(a: Int, b: Int) in
    return a/b 
}

func calculate(a: Int, b: Int, method:(Int,Int) -> Int){
    return method(a,b)
}

var calculated: Int

calculate = calculate(a:50, b: 10, method: add)
print(calculated) // 60 

calculate = calculate(a:50, b: 10, method: substract)
print(calculate) //40

calculate = calculate(a:50, b:10, method: divide)
print(calculate) //5

//따로 클로저를 상수/변수에 넣어 전달하지 않고 
//함수를 호출할때 클로저를 작성하여 전달가능 

calculated = calculate(a:50, b:10, method:{(left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) //500



