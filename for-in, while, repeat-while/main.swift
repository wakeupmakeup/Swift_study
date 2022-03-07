import Swift

var integers = [1,2,3]
let people = ["태경": 10, "친구1": 15, "친구2": 12]

// for-in
//for item in items {
// code
// }

//for-in 구문은 기존 언어의 for-each 구문과 유사하다
//Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옵니다! 

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입이다!
for (name, age) in people {
    print("\(name): \(age)")
}

// while
//while condition {
// coide
// }

while integers.count > 1 {
    integers.removeLast()
}

// repeat-while
// repeat {
// code
// } while condition

repeat {
    integers.removeLast()
} while integers.count > 0
