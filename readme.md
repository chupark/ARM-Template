# ARM Template
이제까지 주로 PowerShell을 사용하여 Azure리소스를 컨트롤 했지만, ARM 템플릿을 사용하여 Azure 리소스를 컨트롤 하는 방법을 공부해야 한다고 느꼈다

## ARM Template 는 무엇인가?
모던환경에 맞춰 만든 Azure의 새로운 모델이다. 기존 ASM에서 더 진보된 모델이며 Desired State로 현재 어떤 상태를 가졌는지 선언하는 방법을 사용한다. 기본 배포방법은 Incremental이며, 기존 리소스가 있다면 Update, 없으면 Create

## 템플릿 파일의 종류
1) azuredeploy.json
- 기본 파일, 리소스 선언, 입력 매개변수 등

2) azuredeploy.parameters.json
- 옵션 파일, 배포 시 필요한 모든 매개 변수에 대한 값을 제공

3) 리소스 그룹에 배포(그룹은 템를릿에 정의되지 않음)


## 일반 템플릿 구조
- schema (필수) - 자동
- contentVersion (필수)
- parameters : 사용자로부터 입력을 받는 변수
- variables : 템플릿 내에서 반복입력을 피하기 위해 사용하는 변수
- resources (필수) 
- outputs : 배포 결과의 output, Linux 사용자 비밀번호 등을 output으로 지정 가능하다

### parameters
Parameter는 리소스를 만들기 위해 입력받는 입력변수 이다. 파일을 따로 만들어 Resource Group에 Deploy시 Parameter를 생략할 수 있다
- (input Name).parameter.json 이라는 파일을 만들어 명시적으로 선언한다.
- 이 파일이 있으면 New-ResourdeGroupDeployment 명령시 Parameter 선언을 생략할 수 있다.

## ARM Func
Azure Resource는 리소스 이름 등 개별 리소스 마다 네이밍 종속성이 있다. 이런 문제를 해결하기 위해 ARM Function을 사용한다.
- 배열과 객체
- 비교
- 배포
- 리소스
- 숫자
- 문자열

## ARM Refactoring
이미 완성된 ARM 템플릿의 필요없는 항목을 제거하여 자동완성 템플릿을 만드는 작업을 뜻 한다.

## ARM Template 조건문
ARM Template의 조건문은 if와 Condition이 있다. 두 함수는 서로 다른기능이므로 구분할 필요가 있다.

## ARM 반복문'
- 리소스 이터레이션
- Property 이터레이션 반드시 반복할 property의 이름을 입력해야함 --> copyindex 에도 같은 이름을 넣어야 함