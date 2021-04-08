# iOS_MVC
Date: 2021.04.07
<br>iOS MVC패턴 학습, 간략하게 구현

<h3>MVC란?</h3>
M: Model &nbsp
V: View &nbsp
C: Controller<br>
<p>역할에 따라 구분</p>
<img src="https://user-images.githubusercontent.com/56987664/113826495-2dec3500-97bd-11eb-91eb-87505196a6be.png"> <br>
<p>상호 독립성이 없기 때문에 iOS 개발에는 적합하지 않음</p>

<br>
<h3>기존 MVC패턴에서 iOS에 적합하게 설계된 CocoaMVC 구조</h3>
<img src="https://user-images.githubusercontent.com/56987664/113826052-abfc0c00-97bc-11eb-8dfc-69da82bb06d0.png"> <br><br>
<li>애플에서 제시를 했으며, Controller가 View와 Model의 중재자 역할을 함으로써 독립성을 부여</li>
<li>개발 속도가 가장 빠른 패턴이지만, 유지보수가 어렵다는 단점</li>
<li>View와 Controller간의 독립성은 확보하지 못한 한계가 있음</li>
<br>
참고: https://jiyeonlab.tistory.com/38<br>
https://velog.io/@zooneon/iOS-MVC-%ED%8C%A8%ED%84%B4%EC%97%90-%EB%8C%80%ED%95%B4-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90
<hr><br><br>
<h1>iOS_MVVM</h1>
Date: 2021.04.08
<br>iOS MVVM패턴 학습, 간략하게 구현
<br><br>
<h3>MVVM 이란?</h3>
M: Model (데이터, 비즈니스 로직)<br>
V: View (UI, UIViewController)<br>
VM: ViewModel(M과 V사이 연결, 모델과 뷰를 갱신하고 주요 로직 처리 담당)<br>
<img src="https://user-images.githubusercontent.com/56987664/113953394-aea94080-9852-11eb-9b87-d5546ddc39ee.png">
<li>독립적인 테스트 가능 (유지보수 용이)</li>
<li>Controller의 코드양이 줄어듦</li>
<li>VM설계의 어려움</li>
<li>효과적인 구현을 위해서 RxSwift 사용</li>

<br>
참고: https://gwangyonglee.tistory.com/49<br>
http://labs.brandi.co.kr/2018/02/21/kimjh.html<br>
https://velog.io/@sso0022/iOS-MVC-%EC%99%80-MVVM