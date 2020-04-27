<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="IncludePage.jsp"%>
<!-- 
	include 지시어 : 공통으로 사용할 jsp파일을 생성한후
		현재문서에 포함시킬때 사용한다. 각각의 jsp파일 상단에는
		반드시 page지시어(Direction)가 삽입되어야 한다.
		※단, 하나의 jsp파일에는 page지시어가 중복되어서는 안된다.
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IncludeMain.jsp</title>
<!-- CSS코드는 양이 많으므로 외부파일로 선언하여 현재문서에 링크시킨다. -->
<link rel="stylesheet" href="./css/div_layout.css" />
</head>
<body>
	<div class="AllWrap">
		<div class="header">
			<!-- GNB(Global Navigation Bar)영역 -전체공통메뉴 -->
			<%@ include file="../common/Top.jsp"%>
		</div>
		<div class="body">
			<div class="left_menu">
				<!-- LNB(Local Navigation Bar)영역 - 로컬메뉴 -->
				<%@ include file="../common/Left.jsp"%>
			</div>
			<div class="contents">
				<!-- Contents 영역 -->
				<%--
				해당 변수는 첨부파일에 선언하여 본 문서에 include처리되었다.
				include는 문서자체를 포함시키는 개념이므로 에러가 발생하지 않는다.
				--%>
				<h2>
					오늘의 날짜 :
					<%=todayStr%></h2>
				<br /> <br /> [아이뉴스24 김다운 기자] '카카오프렌즈' 캐릭터 체크카드로 돌풍을 일으켰던 카카오뱅크가
				이번에는 처음으로 신용카드를 내놨다. 27일 오후부터 신청이 가능한데 이번에는 모두 '라이언' 캐릭터로만 구성됐다. 27일
				카카오뱅크는 신한카드, KB국민카드, 삼성카드, 씨티카드와 협업해 각각 다른 혜택을 담은 각 사별 1종, 총 4종의 제휴
				신용카드를 공개했다. 카카오뱅크 신용카드 4종 [이미지=카카오뱅크] 카카오뱅크는 2017년 출범하면서 출시한 카카오프렌즈
				캐릭터 체크카드로 카드계에 '캐릭터 카드 열풍'을 불러온 바 있다. 당시 카카오뱅크 체크카드 신청이 폭주해 카드를 받기
				위해 한달 이상이 걸릴 정도였다. 그만큼 이번 신용카드의 디자인에도 관심이 모인다. 카카오뱅크 체크카드는 출시 당시
				라이언, 어피치, 무지, 콘 4가지 캐릭터 중에서 고를 수 있었다. 하지만 이번에 내놓은 신용카드는 라이언 캐릭터 하나만
				대표 캐릭터로 내세웠다. 신한카드, KB국민카드, 삼성카드 제휴카드가 모두 라이언 캐릭터로 이뤄져 있으며, 씨티카드
				제휴카드는 캐릭터가 없는 심플한 단색 디자인이다. 카드 디자인 공개 후 아이돌 그룹만큼 각 캐릭터들의 팬덤이 확고한
				'카카오프렌즈 매니아'들 사이에서는 "왜 라이언밖에 없느냐" "어피치, 무지 카드도 만들어 달라" "대세는 니니즈다" 라며
				원성도 터져나오고 있다. <br /> <br />
			</div>
		</div>
		<div class="copyright">
			<!-- Copyright -->
			<%@ include file="../common/Copyright.jsp"%>
		</div>
	</div>
</body>
</html>