# 회원관리 및 운동 능력 기록 앱 서버

## 📌 서비스 개요

병원 예약 및 예약자 관리 

<br/>

## 📌 제작 기간

2022.10.16 ~ 2022.10.18 (3일)

<br/>

## 📌 요구사항 분석 및 구현

### 회원

**1. 병원 예약 가능 목록**

- 예약 가능한 목록을 확인할 수 있습니다.
- 병원의 예약 가능 일시를 확인할 수 있습니다.

**2. 예약 등록**

- 예약자의 이름, 예약 시간, 예약 종류(진료, 검진, ... 등)의 데이터를 활용하여 병원 진료를 예약합니다.
- 중복 예약은 불가합니다.

**3. 전체 예약 목록**

- 예약 번호 또는 예약자로 예약 목록 조회가 가능해야 합니다.

**4. 예약 변경**

- 신청한 예약 번호를 통해 예약을 변경할 수 있습니다. (환자 이름, 예약 시간, 예약 종류 변경 가능)

<br/>

## 📌 DB Modeling

**[🔗 dbdiagram](https://dbdiagram.io/d/6342861cf0018a1c5fc43173)**
![DB Modeling](https://i.imgur.com/e96LpnO.jpg)

<br>

## 📌 API DOCS

🔗 API DOCS

<br/>

## 📌 적용 기술

- 사용언어 : Javascript
- 런타임 환경 : Node.js
- 프레임워크 : Express
- ORM : TypeORM
- 데이터베이스 : MySQL

<br/>

## 📌 Commit Convention

- Init : 프로젝트 초기 세팅
- Add : 새로운 기능 추가
- Update : 원래도 정상적으로 동작하고 있었지만 수정, 추가, 보완 했을 때
- Fix : 올바르지 않은 동작을 고친 경우 (버그 수정)
- Chore : 빌드 업무 수정, 패키지 매니저 수정, 그 외 자잘한 수정에 대한 커밋
- Docs : 문서 작성, 수정
- Refactor : 코드 리팩토링
- Test : 테스트 코드 추가
- Style : 코드 포맷팅, 세미콜론 누락, 코드 변경이 없는 경우, linting
