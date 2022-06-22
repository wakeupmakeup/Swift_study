// 변수 선언 및 사용

// var [변수명]: [데이터 타입] = [값] 이 기본형이다.

var name: String = "김태경"
var age: Int = 25
var job : String = "student"
var height: Int = 181
age = 99 //변수는 값을 변경해 줄 수 있다.
job = "개발자"

print("my name is \(name), I'm \(age) years old and my job is \(job). it's secret, my height is \(height)")


//상수는 변수와 달리 값을 변경 할 수 없으며 let으로 선언한다.
//선언 방법은 let [상수명]: [데이터 타입] = [값]으로 한다.

let name: String = "김태경"

//상수는 가독성을 높히기 위해서 사용한다. 주석같은 것을 첨가 하지 않아도 되기 때문이다. 위에 코드가 오류가 나는 이유는 name이라는 이름을 동시에 사용해서 그런 것.


