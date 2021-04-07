# iOS_MVC
Date: 2021.04.07
<br>iOS MVC패턴 학습, 간략하게 구현

<h2>MVC란?</h2>
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