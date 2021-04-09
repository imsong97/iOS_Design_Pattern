import UIKit

// Struct vs Class

// struct 와 class는 기능집합

struct A {
    var a = 10
    // struct는 값 복사
    // 서버에서 json같은 정보를 가져와 넣을 때 사용
    // 상속 불가능
}

class B {
    var b = 10
    // class는 값 참조
    // 상속 가능
}

var strA = A()
var classB = B()

var strAA = strA // 복사 -> strAA의 값을 바꿔도 strA의 값은 바뀌지 않음 (상호 독립적)
var classBB = classB // 참조 -> classBB의 값을 바꾸면 classB의 값도 바뀜 (연관 관계)
