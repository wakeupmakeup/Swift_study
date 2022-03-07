import Swift

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
