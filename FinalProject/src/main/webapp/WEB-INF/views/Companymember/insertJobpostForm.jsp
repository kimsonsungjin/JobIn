<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../scr.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("resources/reset.css");</style>
<style type="text/css">@import url("resources/scr.css");</style>
<script type="text/javascript">

	function back(){
		location.href="main";
	}
</script>
</head>
<body>
<form action="insertJobpost" method="post" onsubmit="return formCheck();">
<input type="hidden" name="cName" value="${companymem.cName}">
<input type="hidden" name="companyCode" value="${companymem.companyCode}">
<input type="hidden" name="cHomepage" value="${companymem.cHomepage}">
<input type="hidden" name="applicant" value="0">
<input type="hidden" name="cLogo" value="${companymem.cLogo}">
<input type="hidden" name="readCnt" value="0">
<%-- <input type="hidden" name="companyCode" value="${list.companyCode}"> --%>
	<div class="jobpost-subject">채용공고</div>
	<span>어떤 인재를 찾으시나요?</span>
<div class="jobpost-item">
<table>
	<!-- 직종 START -->
	<tr>
		<th>직종</th>
		<td><div class="occup_class"><div id="occup"></div></div></td>
		<td><button type="button" id="modal_btn1">선택하기</button>
			<div class="black_bg1"></div>
			<div class="modal_wrap1">
			 <div class="modal_close1"><a href="#">close</a></div>
			 <div class="modal_body">
			<table>
				<tr><td class="modal_subject">직종</td></tr>
				<tr><td class="modal_content">
				<div><input type="checkbox" name="occupation" value="웹개발" id="o0"  autofocus="autofocus">
				<label for="o0">웹개발</label></div>
				<div><input type="checkbox" name="occupation" value="응용프로그램개발" id="o1">
				<label for="o1">응용프로그램개발</label></div>
				<div><input type="checkbox" name="occupation" value="시스템개발" id="o2">
				<label for="o2">시스템개발</label></div>
				<div><input type="checkbox" name="occupation" value="서버/네트워크/보안" id="o3">
				<label for="o3">서버/네트워크/보안</label></div>
				<div><input type="checkbox" name="occupation" value="ERP/시스템분석/설계" id="o4">
				<label for="o4">ERP/시스템분석/설계</label></div>
				<div><input type="checkbox" name="occupation" value="데이터베이스/DBA" id="o5">
				<label for="o5">데이터베이스/DBA</label></div>
				<div><input type="checkbox" name="occupation" value="퍼블리싱/UI개발" id="o6">
				<label for="o6">퍼블리싱/UI개발</label></div>
				<div><input type="checkbox" name="occupation" value="웹디자인" id="o7">
				<label for="o7">웹디자인</label></div>
				<div><input type="checkbox" name="occupation" value="웹기획" id="o8">
				<label for="o8">웹기획</label></div>
				<div><input type="checkbox" name="occupation" value="웹마스터/QA/테스터" id="o9">
				<label for="o9">웹마스터/QA/테스터</label></div>
				<div><input type="checkbox" name="occupation" value="컨텐츠/사이트운영" id="o10">
				<label for="o10">컨텐츠/사이트운영</label></div>
				<div><input type="checkbox" name="occupation" value="게임" id="o11">
				<label for="o11">게임</label></div>
				<div><input type="checkbox" name="occupation" value="인공지능(AI)/빅데이터" id="o12">
				<label for="o12">인공지능(AI)/빅데이터</label></div>
				<div><input type="checkbox" name="occupation" value="하드웨어/소프트웨어" id="o13">
				<label for="o13">하드웨어/소프트웨어</label></div>
				<div><input type="checkbox" name="occupation" value="통신/모바일" id="o14">
				<label for="o14">통신/모바일</label></div>
				<div><input type="checkbox" name="occupation" value="IT/디자인/컴퓨터교육" id="o15">
				<label for="o15">IT/디자인/컴퓨터교육</label></div>
				</td>
				</tr>
			</table>
			</div>
			<div class="modal_conf">
				 <a id="conf1">확인</a>
				 <a id="cancel1">닫기</a>
				 <a id="init1">초기화</a>
			</div>
			</div>
		</td>
	</tr>
	<!-- 직종 END -->
	<!-- 경력여부 START -->	
	<tr>
		<th>경력</th>
		<td>
			<input type="checkbox" name="career" value="신입" id="ca0">
			<label for="ca0">신입</label>
			<input type="checkbox" name="career" value="경력" id="ca1">
			<label for="ca1">경력</label>
			<input type="checkbox" name="career" value="경력무관" id="ca2">
			<label for="ca2">경력무관</label>
		
		<div id="cD">
		<input type="number" class="cDclass" name="careerDateA" disabled="disabled">년 이상 
		<input type="number" class="cDclass" name="careerDateB" disabled="disabled">년 이하
		</div>
		</td>
	</tr>
	<!-- 경력여부 END -->
	<!-- 고용형태 START -->
	<tr>
		<th>고용형태</th>
		<td>
			<input type="checkbox" name="jobtype" value="정규직" id="j0">
			<label for="j0">정규직</label>
			<input type="checkbox" name="jobtype" value="계약직" id="j1">
			<label for="j1">계약직</label>
			<input type="checkbox" name="jobtype" value="인턴" id="j2">
			<label for="j2">인턴</label>
			<input type="checkbox" name="jobtype" value="파견직" id="j3">
			<label for="j3">파견직</label>
			<input type="checkbox" name="jobtype" value="도급" id="j4">
			<label for="j4">도급</label>
			<input type="checkbox" name="jobtype" value="프리랜서" id="j5">
			<label for="j5">프리랜서</label>
			<input type="checkbox" name="jobtype" value="아르바이트" id="j6">
			<label for="j6">아르바이트</label>
			<input type="checkbox" name="jobtype" value="연수생/교육생" id="j7">
			<label for="j7">연수생/교육생</label>
			<input type="checkbox" name="jobtype" value="병역특례" id="j8">
			<label for="j8">병역특례</label>
			<input type="checkbox" name="jobtype" value="위촉직/개인사업자" id="j9">
			<label for="j9">위촉직/개인사업자</label>
		</td>
	</tr>
	<!-- 고용형태 END -->
	<!-- 모집인원START -->
 	<tr>
		<th>모집인원</th>
		<td>
			<input type="radio" class="nO" id="n1" name="numOfPeo" value="0명" required="required">
			<label for="n1">0명</label>
			<input type="radio" class="nO" id="n2" name="numOfPeo" value="00명">
			<label for="n2">00명</label>
			<input type="radio" class="nO" id="n3" name="numOfPeo" value="000명">
			<label for="n3">000명</label>
			<input type="radio" id="onoff" value="null" name="numOfPeo">
			<label for="onoff">직접입력</label>
    		<input type="text" id="tx" disabled="disabled" name="numOfPeo"/>
		</td>
	</tr>
	<!-- 모집인원END -->
	<!-- 직급/직책 START -->
	<tr>
		<th>직급/직책</th>
		<td><div class="jobs_class"><div id="jobs"></div></div></td>
		<td><button type="button" id="modal_btn2">선택하기</button>
			<div class="black_bg"></div>
			<div class="modal_wrap">
			<div class="modal_close"><a href="#">close</a></div>
			<div class="modal_body">
			<table>
				<tr><td class="modal_subject">직급/직책</td></tr>
				<tr><td class="modal_content">
				<input type="checkbox" name="position" value="사원" id="p0">
				<label for="p0">사원</label><p>
				<input type="checkbox" name="position" value="주임" id="p1">
				<label for="p1">주임</label><p>
				<input type="checkbox" name="position" value="계장" id="p2">
				<label for="p2">계장</label><p>
				<input type="checkbox" name="position" value="대리" id="p3">
				<label for="p3">대리</label><p>
				<input type="checkbox" name="position" value="과장" id="p4">
				<label for="p4">과장</label><p>
				<input type="checkbox" name="position" value="차장" id="p5">
				<label for="p5">차장</label><p>
				<input type="checkbox" name="position" value="부장" id="p6">
				<label for="p6">부장</label><p>
				<input type="checkbox" name="position" value="이사" id="p7">
				<label for="p7">이사</label><p>	
                <input type="checkbox" name="position" value="상무" id="p8">
				<label for="p8">상무</label><p>		
				<input type="checkbox" name="position" value="실장" id="p9">
				<label for="p9">실장</label><p>
				<input type="checkbox" name="position" value="임원" id="p10">
				<label for="p10">임원</label><p>
				<input type="checkbox" name="position" value="이사" id="p11">
				<label for="p11">이사</label><p>
				<input type="checkbox" name="position" value="상무" id="p12">
				<label for="p12">상무</label><p>
				<input type="checkbox" name="position" value="임원" id="p13">
				<label for="p13">임원</label><p>
                <input type="checkbox" name="position" value="전무" id="p14">
				<label for="p14">전무</label><p>			
				<input type="checkbox" name="position" value="부사장" id="p15">
				<label for="p15">부사장</label><p>
				<input type="checkbox" name="position" value="사장" id="p16">
				<label for="p16">사장</label><p>
				<input type="checkbox" name="position" value="연구원" id="p17">
				<label for="p17">연구원</label><p>
				<input type="checkbox" name="position" value="주임연구원" id="p18">
				<label for="p18">주임연구원</label><p>
				<input type="checkbox" name="position" value="선임연구원" id="p19">
				<label for="p19">선임연구원</label><p>
				<input type="checkbox" name="position" value="책임연구원" id="p20">
				<label for="p20">책임연구원</label><p>
				<input type="checkbox" name="position" value="수석연구원" id="p21">
				<label for="p21">수석연구원</label><p>
				<input type="checkbox" name="position" value="연구소장" id="p22">
				<label for="p22">연구소장</label><p>
				</td>
				</tr>
			</table>
			</div>
			<div class="modal_conf">
				 <a id="conf">확인</a>
				 <a id="cancel">닫기</a>
				 <a id="init">초기화</a>
			</div>
			</div>
		</td>
	</tr>
	<!-- 직급/직책 END -->
</table>
</div>
	<span>지원자격은 어떤것들이 있나요?</span>
<div class="jobpost-item">
<table>
	<!-- 학력 START -->
	<tr>
		<th>학력</th>
		<td>
			<select class="jobpost-select" name="finalEdu">
				<option value="고등학교졸업">고등학교졸업</option>
				<option value="대학졸업(2,3년)이상">대학졸업(2,3년)이상</option>
				<option value="대학졸업(4년)이상">대학졸업(4년)이상</option>
				<option value="석사졸업">석사졸업</option>
				<option value="박사졸업">박사졸업</option>
			</select>
			<label for="f0">졸업예정자 가능</label>
			<input type="checkbox" id="f0" name="finalEduConf" value="y">
		</td>
	</tr>
	<tr>
		<th>우대조건</th>
		<td>
			<input type="checkbox" name="preferential" value="보훈대상" id="pr0">
			<label for="pr0">보훈대상자</label>
			<input type="checkbox" name="preferential" value="취업보호 대상" id="pr1">
			<label for="pr1">취업보호 대상자</label>
			<input type="checkbox" name="preferential" value="고용지원금 대상" id="pr2">
			<label for="pr2">고용지원금 대상자</label>
			<input type="checkbox" name="preferential" value="장애" id="pr3">
			<label for="pr3">장애인</label>
			<input type="checkbox" name="preferential" value="병역" id="pr4">
			<label for="pr4">군필자</label>
			<input type="checkbox" id="Pretc">
			<label for="Pretc">기타사항</label>
			<input type="text" name="preferential" disabled="disabled" id="pr5">
		</td>
	</tr>
	<!-- 학력 END -->
<!-- 	
	외국어 START
	<tr>
		<th>외국어</th>
	<td><div id="langs"></div>
  <div class="dropdown">
  <button type="button" class="dropbtn" onclick="myFunction()">수정/추가하기
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
<div class="tab">
  <button type="button" class="tablinks" onclick="openDropdown(event, 'English')" id="defaultOpen">English</button>
  <button type="button" class="tablinks" onclick="openDropdown(event, 'Japanese')">Japanese</button>
  <button type="button" class="tablinks" onclick="openDropdown(event, 'Chinese')">Chinese</button>
  <button type="button" class="tablinks" onclick="openDropdown(event, 'German')">German</button>
  <button type="button" class="tablinks" onclick="openDropdown(event, 'French')">French</button>
</div>

<div id="English" class="tabcontent">
	<label for="le0">TOEIC</label>
	<input type="checkbox" name="language" value="TOEIC" id="le0"><p>
	<label for="le1">TOEIC(Speaking)</label>
	<input type="checkbox" name="language" value="TOEIC(Speaking)" id="le1"><p>
	<label for="le2">TOEIC Speaking and Writing Tests</label>
	<input type="checkbox" name="language" value="TOEIC Speaking and Writing Tests" id="le2"><p>
	<label for="le3">TOEFL(PBT)</label>
	<input type="checkbox" name="language" value="TOEFL(PBT)" id="le3"><p>
	<label for="le4">TOEFL(iBT)</label>
	<input type="checkbox" name="language" value="TOEFL(iBT)" id="le4"><p>
	<label for="le5">TEPS</label>
	<input type="checkbox" name="language" value="TEPS" id="le5"><p>
	<label for="le6">IELTS</label>
	<input type="checkbox" name="language" value="IELTS" id="le6"><p>
	<label for="le7">G-TELP(GLT)</label>
	<input type="checkbox" name="language" value="G-TELP(GLT)" id="le7"><p>
	<label for="le8">G-TELP(GST)</label>
	<input type="checkbox" name="language" value="G-TELP(GST)" id="le8"><p>
	<label for="le9">FLEX 영어</label>
	<input type="checkbox" name="language" value="FLEX 영어" id="le9"><p>
</div>

<div id="Japanese" class="tabcontent">
	<label for="lj0">JPL</label>
	<input type="checkbox" name="language" value="JPL" id="lj0"><p>
	<label for="lj1">JLPT</label>
	<input type="checkbox" name="language" value="JLPT" id="lj1"><p>
	<label for="lj2">新JLPT</label>
	<input type="checkbox" name="language" value="新JLPT" id="lj2"><p>
	<label for="lj3">JTRA</label>
	<input type="checkbox" name="language" value="JTRA" id="lj3"><p>
	<label for="lj4">NPT</label>
	<input type="checkbox" name="language" value="NPT" id="lj4"><p>
	<label for="lj5">SJPT</label>
	<input type="checkbox" name="language" value="SJPT" id="lj5"><p>
	<label for="lj6">OPIC</label>
	<input type="checkbox" name="language" value="OPIC" id="lj6"><p>
	<label for="lj7">FLEX 일본어</label>
	<input type="checkbox" name="language" value="FLEX 일본어" id="lj7"><p>
</div>

<div id="Chinese" class="tabcontent">
	<label for="lc0">HSK</label>
	<input type="checkbox" name="language" value="HSK" id="lc0"><p>
	<label for="lc1">新HSK</label>
	<input type="checkbox" name="language" value="新HSK" id="lc1"><p>
	<label for="lc2">HSK회화</label>
	<input type="checkbox" name="language" value="HSK회화" id="lc2"><p>
	<label for="lc3">新HSK회화</label>
	<input type="checkbox" name="language" value="新HSK회화" id="lc3"><p>
	<label for="lc4">TSC</label>
	<input type="checkbox" name="language" value="TSC" id="lc4"><p>
	<label for="lc5">OPIc</label>
	<input type="checkbox" name="language" value="OPIc" id="lc5"><p>
	<label for="lc6">BCT</label>
	<input type="checkbox" name="language" value="BCT" id="lc6"><p>
	<label for="lc7">CPT</label>
	<input type="checkbox" name="language" value="CPT" id="lc7"><p>
	<label for="lc8">FLEX 중국어</label>
	<input type="checkbox" name="language" value="FLEX 중국어" id="lc8"><p>
</div>

<div id="German" class="tabcontent">
	<label for="lg0">ZDAF</label>
	<input type="checkbox" name="language" value="ZDAF" id="lg0"><p>
	<label for="lg1">ZMP</label>
	<input type="checkbox" name="language" value="ZMP" id="lg1"><p>
	<label for="lg2">GDS</label>
	<input type="checkbox" name="language" value="GDS" id="lg2"><p>
	<label for="lg3">KDS</label>
	<input type="checkbox" name="language" value="KDS" id="lg3"><p>
	<label for="lg4">DSH</label>
	<input type="checkbox" name="language" value="DSH" id="lg4"><p>
	<label for="lg5">SD1</label>
	<input type="checkbox" name="language" value="SD1" id="lg5"><p>
	<label for="lg6">SD2</label>
	<input type="checkbox" name="language" value="SD2" id="lg6"><p>
	<label for="lg7">CT번역 능력 인정시험 독일어</label>
	<input type="checkbox" name="language" value="CT번역 능력 인정시험 독일어" id="lg7"><p>
	<label for="lg8">FLEX 독일어</label>
	<input type="checkbox" name="language" value="FLEX 독일어" id="lg8"><p>
</div>

<div id="French" class="tabcontent">
	<label for="lf0">DELF</label>
	<input type="checkbox" name="language" value="DELF" id="lf0"><p>
	<label for="lf1">DALF</label>
	<input type="checkbox" name="language" value="DALF" id="lf1"><p>
	<label for="lf2">FLEX프랑스어</label>
	<input type="checkbox" name="language" value="FLEX프랑스어" id="lf2"><p>
</div>
<div class="foot">
	<a id="conf2">확인</a>
	<a id="cancel2">닫기</a>
	<a id="init2">초기화</a>
 </div>
  </div>
  </div>
		</td>
	</tr>
	외국어 END
	 -->
<!-- 	 
	자격증 START
	<tr>
		<th>자격증</th>
		<td><div class="buttons">
		<span class="buttons-text">자격증명</span><input type="text" name="license">   <input type="button" class="btnAdd" value="추가하기"><p>
		</div>
		</td>
	</tr>
	자격증 END
	 -->
	<!-- 우대전공 START -->
	<tr>
		<th>우대전공</th>
		<td><div class="buttons1">
		<span class="buttons1-text">전공명</span><input type="text" name="major">   <input type="button" class="btnAdd1" value="추가하기"><p>
		</div>
		</td>
	</tr>
	<!-- 우대전공 END -->
	<!-- 프로그래밍언어 START-->
	<tr>
		<th>프로그래밍언어</th>
		<td><div class="buttons2">
		<span class="buttons2-text">언어명</span><input type="text" name="keyword">   <input type="button" class="btnAdd2" value="추가하기"><p>
		</div>
		</td>
	</tr>
	<!-- 프로그래밍언어 END -->
<!-- 	
	성별제한 START
	<tr>
		<th>성별제한</th>
		<td>
			<input type="radio" id="g0" name="genderLimit" value="성별무관" required="required">
			<label for="g0">성별무관</label>
			<input type="radio" id="g1" name="genderLimit" value="남성">
			<label for="g1">남성</label>
			<input type="radio" id="g2" name="genderLimit" value="여성">
			<label for="g2">여성</label>
		</td>
	</tr>
	성별제한 END
	 -->
	<!-- 연령제한 START-->
	<tr>
		<th>연령제한</th>
		<td>
			<input type="radio" id="a0" name="ageLimit" value="0" required="required">
			<label for="a0">연령무관</label>
			<input type="radio" id="a1" name="ageLimit">
			<label for="a1">연령제한</label>
			<div class="agetext"><input type="number" name="ageLimit"> ~ <input type="number" name="ageLimit"></div>
		</td>
	</tr>
	<!-- 연령제한 END -->
</table>
</div>
	<span>근무조건을 입력해주세요</span>
<div class="jobpost-item">
<table>
	<!-- 연봉 START -->
	<tr>
		<th>연봉</th>
		<td>
			<input id="ye1" type="number" name="sal" required="required">만원
		</td>
	</tr>
	<tr>
		<th>근무지역</th>
	<td><div id="wa"></div>
		  <div class="dropdown_wa">
		  <button type="button" class="dropbtn_wa" onclick="myFunction_wa()">수정/추가하기
		    <i class="fa fa-caret-down"></i>
		  </button>
		  <div class="dropdown_wa-content" id="myDropdown_wa">
		<div class="tab">
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Seoul')" id="defaultOpen_wa">서울</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Gyeonggi')">경기</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Incheon')">인천</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Daejeon')">대전</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Sejong')">세종</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Chungnam')">충남</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Chungbuk')">충북</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Gwangju')">광주</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Jeonnam')">전남</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Jeonbuk')">전북</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Daegu')">대구</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Gyeongbuk')">경북</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Busan')">부산</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Ulsan')">울산</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Gyeongnam')">경남</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Kangwon')">강원</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Jeju')">제주</button>
		  <button type="button" class="tablinks_wa" onclick="openDropdown_wa(event, 'Allarea')">전국</button>
		</div>
		<div id="Seoul" class="tabcontent_wa">
			<label for="wa0">강남구</label>
			<input type="checkbox" name="workarea" value="서울 강남구" id="wa0"><p>
			<label for="wa1">강동구</label>
			<input type="checkbox" name="workarea" value="서울 강동구" id="wa1"><p>
			<label for="wa2">강북구</label>
			<input type="checkbox" name="workarea" value="서울 강북구" id="wa2"><p>
			<label for="wa3">강서구</label>
			<input type="checkbox" name="workarea" value="서울 강서구" id="wa3"><p>
			<label for="wa4">관악구</label>
			<input type="checkbox" name="workarea" value="서울 관악구" id="wa4"><p>
			<label for="wa5">광진구</label>
			<input type="checkbox" name="workarea" value="서울 광진구" id="wa5"><p>
			<label for="wa6">구로구</label>
			<input type="checkbox" name="workarea" value="서울 구로구" id="wa6"><p>
			<label for="wa7">금천구</label>
			<input type="checkbox" name="workarea" value="서울 금천구" id="wa7"><p>
			<label for="wa8">노원구</label>
			<input type="checkbox" name="workarea" value="서울 노원구" id="wa8"><p>
			<label for="wa10">도봉구</label>
			<input type="checkbox" name="workarea" value="서울 도봉구" id="wa10"><p>
			<label for="wa11">동대문구</label>
			<input type="checkbox" name="workarea" value="서울 동대문구" id="wa11"><p>
			<label for="wa12">동작구</label>
			<input type="checkbox" name="workarea" value="서울 동작구" id="wa12"><p>
			<label for="wa13">마포구</label>
			<input type="checkbox" name="workarea" value="서울 마포구" id="wa13"><p>
			<label for="wa14">서대문구</label>
			<input type="checkbox" name="workarea" value="서울 서대문구" id="wa14"><p>
			<label for="wa15">서초구</label>
			<input type="checkbox" name="workarea" value="서울 서초구" id="wa15"><p>
			<label for="wa16">성동구</label>
			<input type="checkbox" name="workarea" value="서울 성동구" id="wa16"><p>
			<label for="wa17">성북구</label>
			<input type="checkbox" name="workarea" value="서울 성북구" id="wa17"><p>
			<label for="wa18">송파구</label>
			<input type="checkbox" name="workarea" value="서울 송파구" id="wa18"><p>
			<label for="wa19">영등포구</label>
			<input type="checkbox" name="workarea" value="서울 영등포구" id="wa19"><p>
			<label for="wa20">용산구</label>
			<input type="checkbox" name="workarea" value="서울 용산구" id="wa20"><p>
			<label for="wa21">은평구</label>
			<input type="checkbox" name="workarea" value="서울 은평구" id="wa21"><p>
			<label for="wa22">종로구</label>
			<input type="checkbox" name="workarea" value="서울 종로구" id="wa22"><p>
			<label for="wa23">중구</label>
			<input type="checkbox" name="workarea" value="서울 중구" id="wa23"><p>
			<label for="wa24">중랑구</label>
			<input type="checkbox" name="workarea" value="서울 중랑구" id="wa24"><p>
		</div>
		
		<div id="Gyeonggi" class="tabcontent_wa">
			<label for="wa25">가평군</label>
			<input type="checkbox" name="workarea" value="경기 가평군" id="wa25"><p>
			<label for="wa26">고양</label>
			<input type="checkbox" name="workarea" value="경기 고양" id="wa26"><p>
			<label for="wa27">과천</label>
			<input type="checkbox" name="workarea" value="경기 과천" id="wa27"><p>
			<label for="wa28">광명</label>
			<input type="checkbox" name="workarea" value="경기 광명" id="wa28"><p>
			<label for="wa29">광주</label>
			<input type="checkbox" name="workarea" value="경기 광주" id="wa29"><p>
			<label for="wa30">구리</label>
			<input type="checkbox" name="workarea" value="경기 구리" id="wa30"><p>
			<label for="wa31">군포</label>
			<input type="checkbox" name="workarea" value="경기 군포" id="wa31"><p>
			<label for="wa32">김포</label>
			<input type="checkbox" name="workarea" value="경기 김포" id="wa32"><p>
			<label for="wa33">남양주</label>
			<input type="checkbox" name="workarea" value="경기 남양주" id="wa33"><p>
			<label for="wa34">동두천</label>
			<input type="checkbox" name="workarea" value="경기 동두천" id="wa34"><p>
			<label for="wa35">부천</label>
			<input type="checkbox" name="workarea" value="경기 부천" id="wa35"><p>
			<label for="wa36">성남</label>
			<input type="checkbox" name="workarea" value="경기 성남" id="wa36"><p>
			<label for="wa37">수원</label>
			<input type="checkbox" name="workarea" value="경기 수원" id="wa37"><p>
			<label for="wa38">시흥</label>
			<input type="checkbox" name="workarea" value="경기 시흥" id="wa38"><p>
			<label for="wa39">안산</label>
			<input type="checkbox" name="workarea" value="경기 안산" id="wa39"><p>
			<label for="wa40">안성</label>
			<input type="checkbox" name="workarea" value="경기 안성" id="wa40"><p>
			<label for="wa41">안양</label>
			<input type="checkbox" name="workarea" value="경기 안양" id="wa41"><p>
			<label for="wa42">양주</label>
			<input type="checkbox" name="workarea" value="경기 양주" id="wa42"><p>
			<label for="wa43">양평군</label>
			<input type="checkbox" name="workarea" value="경기 양평군" id="wa43"><p>
			<label for="wa44">여주</label>
			<input type="checkbox" name="workarea" value="경기 여주" id="wa44"><p>
			<label for="wa45">연천군</label>
			<input type="checkbox" name="workarea" value="경기 연천군" id="wa45"><p>
			<label for="wa46">오산</label>
			<input type="checkbox" name="workarea" value="경기 오산" id="wa46"><p>
			<label for="wa47">용인</label>
			<input type="checkbox" name="workarea" value="경기 용인" id="wa47"><p>
			<label for="wa48">의왕</label>
			<input type="checkbox" name="workarea" value="경기 의왕" id="wa48"><p>
			<label for="wa49">이천</label>
			<input type="checkbox" name="workarea" value="경기 이천" id="wa49"><p>
			<label for="wa50">파주</label>
			<input type="checkbox" name="workarea" value="경기 파주" id="wa50"><p>
			<label for="wa51">평택</label>
			<input type="checkbox" name="workarea" value="경기 평택" id="wa51"><p>
			<label for="wa52">포천</label>
			<input type="checkbox" name="workarea" value="경기 포천" id="wa52"><p>
			<label for="wa53">하남</label>
			<input type="checkbox" name="workarea" value="경기 하남" id="wa53"><p>
			<label for="wa54">화성</label>
			<input type="checkbox" name="workarea" value="경기 화성" id="wa54"><p>
		</div>
		
		<div id="Incheon" class="tabcontent_wa">
			<label for="wa55">강화군</label>
			<input type="checkbox" name="workarea" value="인천 강화군" id="wa55"><p>
			<label for="wa56">계양구</label>
			<input type="checkbox" name="workarea" value="인천 계양구" id="wa56"><p>
			<label for="wa57">미추홀구</label>
			<input type="checkbox" name="workarea" value="인천 미추홀구" id="wa57"><p>
			<label for="wa58">남동구</label>
			<input type="checkbox" name="workarea" value="인천 남동구" id="wa58"><p>
			<label for="wa59">동구</label>
			<input type="checkbox" name="workarea" value="인천 동구" id="wa59"><p>
			<label for="wa60">부평구</label>
			<input type="checkbox" name="workarea" value="인천 부평구" id="wa60"><p>
			<label for="wa61">서구</label>
			<input type="checkbox" name="workarea" value="인천 서구" id="wa61"><p>
			<label for="wa62">연수구</label>
			<input type="checkbox" name="workarea" value="인천 연수구" id="wa62"><p>
			<label for="wa63">옹진군</label>
			<input type="checkbox" name="workarea" value="인천 옹진군" id="wa63"><p>
			<label for="wa64">중구</label>
			<input type="checkbox" name="workarea" value="인천 중구" id="wa64"><p>
		</div>
		
		<div id="Daejeon" class="tabcontent_wa">
			<label for="wa65">대덕구</label>
			<input type="checkbox" name="workarea" value="대전 대덕구" id="wa65"><p>
			<label for="wa66">동구</label>
			<input type="checkbox" name="workarea" value="대전 동구" id="wa66"><p>
			<label for="wa67">서구</label>
			<input type="checkbox" name="workarea" value="대전 서구" id="wa67"><p>
			<label for="wa68">유성구</label>
			<input type="checkbox" name="workarea" value="대전 유성구" id="wa68"><p>
			<label for="wa69">중구</label>
			<input type="checkbox" name="workarea" value="대전 중구" id="wa69"><p>
		</div>
		
		<div id="Sejong" class="tabcontent_wa">
			<label for="wa70">세종</label>
			<input type="checkbox" name="workarea" value="세종" id="wa70"><p>
		</div>
		
		<div id="Chungnam" class="tabcontent_wa">
			<label for="wa71">공주</label>
			<input type="checkbox" name="workarea" value="충남 공주" id="wa71"><p>
			<label for="wa72">금산군</label>
			<input type="checkbox" name="workarea" value="충남 금산군" id="wa72"><p>
			<label for="wa73">논산시</label>
			<input type="checkbox" name="workarea" value="충남 논산시" id="wa73"><p>
			<label for="wa74">당진시</label>
			<input type="checkbox" name="workarea" value="충남 당진시" id="wa74"><p>
			<label for="wa75">보령시</label>
			<input type="checkbox" name="workarea" value="충남 보령시" id="wa75"><p>
			<label for="wa76">부여군</label>
			<input type="checkbox" name="workarea" value="충남 부여군" id="wa76"><p>
			<label for="wa77">서산시</label>
			<input type="checkbox" name="workarea" value="충남 서산시" id="wa77"><p>
			<label for="wa78">아산시</label>
			<input type="checkbox" name="workarea" value="충남 아산시" id="wa78"><p>
			<label for="wa79">예산군</label>
			<input type="checkbox" name="workarea" value="충남 예산군" id="wa79"><p>
			<label for="wa80">천안시</label>
			<input type="checkbox" name="workarea" value="충남 천안시" id="wa80"><p>
			<label for="wa81">청양군</label>
			<input type="checkbox" name="workarea" value="충남 청양군" id="wa81"><p>
			<label for="wa82">태안군</label>
			<input type="checkbox" name="workarea" value="충남 태안군" id="wa82"><p>
			<label for="wa83">홍성군</label>
			<input type="checkbox" name="workarea" value="충남 홍성군" id="wa83"><p>
			<label for="wa84">계룡시</label>
			<input type="checkbox" name="workarea" value="충남 계룡시" id="wa84"><p>
		</div>
		
		<div id="Chungbuk" class="tabcontent_wa">
			<label for="wa85">괴산군</label>
			<input type="checkbox" name="workarea" value="충북 괴산군" id="wa85"><p>
			<label for="wa86">단양군</label>
			<input type="checkbox" name="workarea" value="충북 단양군" id="wa86"><p>
			<label for="wa87">보은군</label>
			<input type="checkbox" name="workarea" value="충북 보은군" id="wa87"><p>
			<label for="wa88">영동군</label>
			<input type="checkbox" name="workarea" value="충북 영동군" id="wa88"><p>
			<label for="wa89">옥천군</label>
			<input type="checkbox" name="workarea" value="충북 옥천군" id="wa89"><p>
			<label for="wa90">음성군</label>
			<input type="checkbox" name="workarea" value="충북 음성군" id="wa90"><p>
			<label for="wa91">제천시</label>
			<input type="checkbox" name="workarea" value="충북 제천시" id="wa91"><p>
			<label for="wa92">진천군</label>
			<input type="checkbox" name="workarea" value="충북 진천군" id="wa92"><p>
			<label for="wa93">청주시</label>
			<input type="checkbox" name="workarea" value="충북 청주시" id="wa93"><p>
			<label for="wa94">충주시</label>
			<input type="checkbox" name="workarea" value="충북 충주시" id="wa94"><p>
			<label for="wa95">증평군</label>
			<input type="checkbox" name="workarea" value="충북 증평군" id="wa95"><p>
		</div>
		
		<div id="Gwangju" class="tabcontent_wa">
			<label for="wa96">광산구</label>
			<input type="checkbox" name="workarea" value="광주 광산구" id="wa96"><p>
			<label for="wa97">남구</label>
			<input type="checkbox" name="workarea" value="광주 남구" id="wa97"><p>
			<label for="wa98">동구</label>
			<input type="checkbox" name="workarea" value="광주 동구" id="wa98"><p>
			<label for="wa99">북구</label>
			<input type="checkbox" name="workarea" value="광주 북구" id="wa99"><p>
			<label for="wa100">서구</label>
			<input type="checkbox" name="workarea" value="광주 서구" id="wa100"><p>
		</div>
		
		<div id="Jeonnam" class="tabcontent_wa">
			<label for="wa101">강진군</label>
			<input type="checkbox" name="workarea" value="전남 강진군" id="wa101"><p>
			<label for="wa102">고흥군</label>
			<input type="checkbox" name="workarea" value="전남 고흥군" id="wa102"><p>
			<label for="wa103">곡성군</label>
			<input type="checkbox" name="workarea" value="전남 곡성군" id="wa103"><p>
			<label for="wa104">광양시</label>
			<input type="checkbox" name="workarea" value="전남 광양시" id="wa104"><p>
			<label for="wa105">구례군</label>
			<input type="checkbox" name="workarea" value="전남 구례군" id="wa105"><p>
			<label for="wa106">나주시</label>
			<input type="checkbox" name="workarea" value="전남 나주시" id="wa106"><p>
			<label for="wa107">목포시</label>
			<input type="checkbox" name="workarea" value="전남 목포시" id="wa107"><p>
			<label for="wa108">무안군</label>
			<input type="checkbox" name="workarea" value="전남 무안군" id="wa108"><p>
			<label for="wa109">보성군</label>
			<input type="checkbox" name="workarea" value="전남 보성군" id="wa109"><p>
			<label for="wa110">순천시</label>
			<input type="checkbox" name="workarea" value="전남 순천시" id="wa110"><p>
			<label for="wa111">신안군</label>
			<input type="checkbox" name="workarea" value="전남 신안군" id="wa111"><p>
			<label for="wa112">여수시</label>
			<input type="checkbox" name="workarea" value="전남 여수시" id="wa112"><p>
			<label for="wa113">영광군</label>
			<input type="checkbox" name="workarea" value="전남 영광군" id="wa113"><p>
			<label for="wa114">영암군</label>
			<input type="checkbox" name="workarea" value="전남 영암군" id="wa114"><p>
			<label for="wa115">완도군</label>
			<input type="checkbox" name="workarea" value="전남 완도군" id="wa115"><p>
			<label for="wa116">장성군</label>
			<input type="checkbox" name="workarea" value="전남 장성군" id="wa116"><p>
			<label for="wa117">장흥군</label>
			<input type="checkbox" name="workarea" value="전남 장흥군" id="wa117"><p>
			<label for="wa118">진도군</label>
			<input type="checkbox" name="workarea" value="전남 진도군" id="wa118"><p>
			<label for="wa119">함평군</label>
			<input type="checkbox" name="workarea" value="전남 함평군" id="wa119"><p>
			<label for="wa120">해남군</label>
			<input type="checkbox" name="workarea" value="전남 해남군" id="wa120"><p>
			<label for="wa121">화순군</label>
			<input type="checkbox" name="workarea" value="전남 화순군" id="wa121"><p>
		</div>
		
		<div id="Jeonbuk" class="tabcontent_wa">
			<label for="wa122">고창군</label>
			<input type="checkbox" name="workarea" value="전북 고창군" id="wa122"><p>
			<label for="wa123">군산시</label>
			<input type="checkbox" name="workarea" value="전북 군산시" id="wa123"><p>
			<label for="wa124">김제시</label>
			<input type="checkbox" name="workarea" value="전북 김제시" id="wa124"><p>
			<label for="wa125">남원시</label>
			<input type="checkbox" name="workarea" value="전북 남원시" id="wa125"><p>
			<label for="wa126">무주군</label>
			<input type="checkbox" name="workarea" value="전북 무주군" id="wa126"><p>
			<label for="wa127">부안군</label>
			<input type="checkbox" name="workarea" value="전북 부안군" id="wa127"><p>
			<label for="wa128">순창군</label>
			<input type="checkbox" name="workarea" value="전북 순창군" id="wa128"><p>
			<label for="wa129">완주군</label>
			<input type="checkbox" name="workarea" value="전북 완주군" id="wa129"><p>
			<label for="wa130">익산시</label>
			<input type="checkbox" name="workarea" value="전북 익산시" id="wa130"><p>
			<label for="wa131">임실군</label>
			<input type="checkbox" name="workarea" value="전북 임실군" id="wa131"><p>
			<label for="wa132">장수군</label>
			<input type="checkbox" name="workarea" value="전북 장수군" id="wa132"><p>
			<label for="wa133">전주시</label>
			<input type="checkbox" name="workarea" value="전북 전주시" id="wa133"><p>
			<label for="wa134">정읍시</label>
			<input type="checkbox" name="workarea" value="전북 정읍시" id="wa134"><p>
			<label for="wa135">진안군</label>
			<input type="checkbox" name="workarea" value="전북 진안군" id="wa135"><p>
		</div>
		
		<div id="Daegu" class="tabcontent_wa">
			<label for="wa136">남구</label>
			<input type="checkbox" name="workarea" value="대전 남구" id="wa136"><p>
			<label for="wa137">달서구</label>
			<input type="checkbox" name="workarea" value="대전 달서구" id="wa137"><p>
			<label for="wa138">달성군</label>
			<input type="checkbox" name="workarea" value="대전 달성군" id="wa138"><p>
			<label for="wa139">동구</label>
			<input type="checkbox" name="workarea" value="대전 동구" id="wa139"><p>
			<label for="wa140">북구</label>
			<input type="checkbox" name="workarea" value="대전 북구" id="wa140"><p>
			<label for="wa141">서구</label>
			<input type="checkbox" name="workarea" value="대전 서구" id="wa141"><p>
			<label for="wa142">수성구</label>
			<input type="checkbox" name="workarea" value="대전 수성구" id="wa142"><p>
			<label for="wa143">중구</label>
			<input type="checkbox" name="workarea" value="대전 중구" id="wa143"><p>
		</div>
		
		
		<div id="Gyeongbuk" class="tabcontent_wa">
			<label for="wa144">경산시</label>
			<input type="checkbox" name="workarea" value="경북 경산시" id="wa144"><p>
			<label for="wa145">경주시</label>
			<input type="checkbox" name="workarea" value="경북 경주시" id="wa145"><p>
			<label for="wa146">고령군</label>
			<input type="checkbox" name="workarea" value="경북 고령군" id="wa146"><p>
			<label for="wa147">구미시</label>
			<input type="checkbox" name="workarea" value="경북 구미시" id="wa147"><p>
			<label for="wa148">군위군</label>
			<input type="checkbox" name="workarea" value="경북 군위군" id="wa148"><p>
			<label for="wa149">김천시</label>
			<input type="checkbox" name="workarea" value="경북 김천시" id="wa149"><p>
			<label for="wa150">문경시</label>
			<input type="checkbox" name="workarea" value="경북 문경시" id="wa150"><p>
			<label for="wa151">봉화군</label>
			<input type="checkbox" name="workarea" value="경북 봉화군" id="wa151"><p>
			<label for="wa152">상주시</label>
			<input type="checkbox" name="workarea" value="경북 상주시" id="wa152"><p>
			<label for="wa153">성주군</label>
			<input type="checkbox" name="workarea" value="경북 성주군" id="wa153"><p>
			<label for="wa154">안동시</label>
			<input type="checkbox" name="workarea" value="경북 안동시" id="wa154"><p>
			<label for="wa155">영덕군</label>
			<input type="checkbox" name="workarea" value="경북 영덕군" id="wa155"><p>
			<label for="wa156">영양군</label>
			<input type="checkbox" name="workarea" value="경북 영양군" id="wa156"><p>
			<label for="wa157">영주시</label>
			<input type="checkbox" name="workarea" value="경북 영주시" id="wa157"><p>
			<label for="wa158">영천시</label>
			<input type="checkbox" name="workarea" value="경북 영천시" id="wa158"><p>
			<label for="wa159">예천군</label>
			<input type="checkbox" name="workarea" value="경북 예천군" id="wa159"><p>
			<label for="wa160">울릉군</label>
			<input type="checkbox" name="workarea" value="경북 울릉군" id="wa160"><p>
			<label for="wa161">울진군</label>
			<input type="checkbox" name="workarea" value="경북 울진군" id="wa161"><p>
			<label for="wa162">의성군</label>
			<input type="checkbox" name="workarea" value="경북 의성군" id="wa162"><p>
			<label for="wa163">청도군</label>
			<input type="checkbox" name="workarea" value="경북 청도군" id="wa163"><p>
			<label for="wa164">청송군</label>
			<input type="checkbox" name="workarea" value="경북 청송군" id="wa164"><p>
			<label for="wa165">칠곡군</label>
			<input type="checkbox" name="workarea" value="경북 칠곡군" id="wa165"><p>
			<label for="wa166">포항시</label>
			<input type="checkbox" name="workarea" value="경북 포항시" id="wa166"><p>
		</div>
		
		<div id="Busan" class="tabcontent_wa">
			<label for="wa167">강서구</label>
			<input type="checkbox" name="workarea" value="부산 강서구" id="wa167"><p>
			<label for="wa168">금정구</label>
			<input type="checkbox" name="workarea" value="부산 금정구" id="wa168"><p>
			<label for="wa169">기장군</label>
			<input type="checkbox" name="workarea" value="부산 기장군" id="wa169"><p>
			<label for="wa170">남구</label>
			<input type="checkbox" name="workarea" value="부산 남구" id="wa170"><p>
			<label for="wa171">동구</label>
			<input type="checkbox" name="workarea" value="부산 동구" id="wa171"><p>
			<label for="wa172">동래구</label>
			<input type="checkbox" name="workarea" value="부산 동래구" id="wa172"><p>
			<label for="wa173">부산진구</label>
			<input type="checkbox" name="workarea" value="부산 부산진구" id="wa173"><p>
			<label for="wa174">북구</label>
			<input type="checkbox" name="workarea" value="부산 북구" id="wa174"><p>
			<label for="wa175">사상구</label>
			<input type="checkbox" name="workarea" value="부산 사상구" id="wa175"><p>
			<label for="wa176">사하구</label>
			<input type="checkbox" name="workarea" value="부산 사하구" id="wa176"><p>
			<label for="wa177">서구</label>
			<input type="checkbox" name="workarea" value="부산 서구" id="wa177"><p>
			<label for="wa178">수영구</label>
			<input type="checkbox" name="workarea" value="부산 수영구" id="wa178"><p>
			<label for="wa179">연제구</label>
			<input type="checkbox" name="workarea" value="부산 연제구" id="wa179"><p>
			<label for="wa180">영도구</label>
			<input type="checkbox" name="workarea" value="부산 영도구" id="wa180"><p>
			<label for="wa181">중구</label>
			<input type="checkbox" name="workarea" value="부산 중구" id="wa181"><p>
			<label for="wa182">해운대구</label>
			<input type="checkbox" name="workarea" value="부산 해운대구" id="wa182"><p>
		</div>
		<div id="Ulsan" class="tabcontent_wa">
			<label for="wa183">남구</label>
			<input type="checkbox" name="workarea" value="울산 남구" id="wa183"><p>
			<label for="wa184">동구</label>
			<input type="checkbox" name="workarea" value="울산 동구" id="wa184"><p>
			<label for="wa185">북구</label>
			<input type="checkbox" name="workarea" value="울산 북구" id="wa185"><p>
			<label for="wa186">을주군</label>
			<input type="checkbox" name="workarea" value="울산 을주군" id="wa186"><p>
			<label for="wa187">중구</label>
			<input type="checkbox" name="workarea" value="울산 중구" id="wa187"><p>

		</div>
		
		<div id="Gyeongnam" class="tabcontent_wa">
			<label for="wa188">거제시</label>
			<input type="checkbox" name="workarea" value="경남 거제시" id="wa188"><p>
			<label for="wa189">거창군</label>
			<input type="checkbox" name="workarea" value="경남 거창군" id="wa189"><p>
			<label for="wa190">고성군</label>
			<input type="checkbox" name="workarea" value="경남 고성군" id="wa190"><p>
			<label for="wa191">김해시</label>
			<input type="checkbox" name="workarea" value="경남 김해시" id="wa191"><p>
			<label for="wa192">남해군</label>
			<input type="checkbox" name="workarea" value="경남 남해군" id="wa192"><p>
			<label for="wa193">밀양시</label>
			<input type="checkbox" name="workarea" value="경남 밀양시" id="wa193"><p>
			<label for="wa194">사천시</label>
			<input type="checkbox" name="workarea" value="경남 사천시" id="wa194"><p>
			<label for="wa195">산청군</label>
			<input type="checkbox" name="workarea" value="경남 산청군" id="wa195"><p>
			<label for="wa196">양산시</label>
			<input type="checkbox" name="workarea" value="경남 양산시" id="wa196"><p>
			<label for="wa197">의령군</label>
			<input type="checkbox" name="workarea" value="경남 의령군" id="wa197"><p>
			<label for="wa198">진주시</label>
			<input type="checkbox" name="workarea" value="경남 진주시" id="wa198"><p>
			<label for="wa199">창녕군</label>
			<input type="checkbox" name="workarea" value="경남 창녕군" id="wa199"><p>
			<label for="wa200">창원시</label>
			<input type="checkbox" name="workarea" value="경남 창원시" id="wa200"><p>
			<label for="wa201">통영시</label>
			<input type="checkbox" name="workarea" value="경남 통영시" id="wa201"><p>
			<label for="wa202">하동군</label>
			<input type="checkbox" name="workarea" value="경남 하동군" id="wa202"><p>
			<label for="wa203">함안군</label>
			<input type="checkbox" name="workarea" value="경남 함안군" id="wa203"><p>
			<label for="wa204">함양군</label>
			<input type="checkbox" name="workarea" value="경남 함양군" id="wa204"><p>
			<label for="wa205">합천군</label>
			<input type="checkbox" name="workarea" value="경남 합천군" id="wa205"><p>
		</div>
		
		<div id="Kangwon" class="tabcontent_wa">
			<label for="wa206">강릉시</label>
			<input type="checkbox" name="workarea" value="강원 강릉시" id="wa206"><p>
			<label for="wa207">고성군</label>
			<input type="checkbox" name="workarea" value="강원 고성군" id="wa207"><p>
			<label for="wa208">동해시</label>
			<input type="checkbox" name="workarea" value="강원 동해시" id="wa208"><p>
			<label for="wa209">삼척시</label>
			<input type="checkbox" name="workarea" value="강원 삼척시" id="wa209"><p>
			<label for="wa210">속초시</label>
			<input type="checkbox" name="workarea" value="강원 속초시" id="wa210"><p>
			<label for="wa211">양구군</label>
			<input type="checkbox" name="workarea" value="강원 양구군" id="wa211"><p>
			<label for="wa212">양양군</label>
			<input type="checkbox" name="workarea" value="강원 양양군" id="wa212"><p>
			<label for="wa213">영월군</label>
			<input type="checkbox" name="workarea" value="강원 영월군" id="wa213"><p>
			<label for="wa214">원주시</label>
			<input type="checkbox" name="workarea" value="강원 원주시" id="wa214"><p>
			<label for="wa215">인제군</label>
			<input type="checkbox" name="workarea" value="강원 인제군" id="wa215"><p>
			<label for="wa216">정선군</label>
			<input type="checkbox" name="workarea" value="강원 정선군" id="wa216"><p>
			<label for="wa217">철원군</label>
			<input type="checkbox" name="workarea" value="강원 철원군" id="wa217"><p>
			<label for="wa218">춘천시</label>
			<input type="checkbox" name="workarea" value="강원 춘천시" id="wa218"><p>
			<label for="wa219">태백시</label>
			<input type="checkbox" name="workarea" value="강원 태백시" id="wa219"><p>
			<label for="wa220">평창군</label>
			<input type="checkbox" name="workarea" value="강원 평창군" id="wa220"><p>
			<label for="wa221">홍천군</label>
			<input type="checkbox" name="workarea" value="강원 홍천군" id="wa221"><p>
			<label for="wa222">화천군</label>
			<input type="checkbox" name="workarea" value="강원 화천군" id="wa222"><p>
			<label for="wa223">횡성군</label>
			<input type="checkbox" name="workarea" value="강원 횡성군" id="wa223"><p>
		</div>
		
		<div id="Jeju" class="tabcontent_wa">
			<label for="wa224">서귀포시</label>
			<input type="checkbox" name="workarea" value="제주 서귀포시" id="wa224"><p>
			<label for="wa225">제주시</label>
			<input type="checkbox" name="workarea" value="제주 제주시" id="wa225"><p>
		</div>
		
		<div id="Allarea" class="tabcontent_wa">
			<label for="wa226">전국</label>
			<input type="checkbox" name="workarea" value="전국" id="wa226"><p>
		</div>
		
		<div class="foot">
			<a id="conf3">확인</a>
			<a id="cancel3">닫기</a>
			<a id="init3">초기화</a>
		 </div>
		  </div>
		  </div>
		</td>
	</tr>
	<tr>
		<th>근무부서</th>
		<td><input type="text" name="dept" required="required"></td>
	</tr>
	<tr>
		<th>근무요일</th>
		<td>
			<select class="jobpost-select" name="workWeek" id="ww">
				<option value="주5일(월~금)">주5일(월~금)</option>
				<option value="주4일(월~목)">주4일(월~목)</option>
				<option value="주3일(격일제)">주3일(격일제)</option>
				<option value="탄력적 근무제">탄력적 근무제</option>
				<option value="2교대">2교대</option>
				<option value="3교대">3교대</option>
				<option value="4교대">4교대</option>
				<option value="">직접입력</option>
			</select>
			<input type="text" id="wwText" name="workWeek">
		</td>
	</tr>
	<tr>
		<th>근무시간</th>
		<td>
			<select class="jobpost-select" name="workTime" id="wt">
				<option value="오전 9시~오후 6시">오전 9시~오후 6시</option>
				<option value="오전 10시~오후 7시">오전 10시~오후 7시</option>
				<option value="오전 8시30분~오후 5시 30분">오전 8시30분~오후 5시 30분</option>
				<option value="탄력 근무제">탄력 근무제</option>
				<option value="">직접입력</option>
			</select>
			<input type="text" id="wtText" name="workTime" placeholder="ex)오전  9시 ~ 오후 6시">
		</td>
	</tr>
</table>
</div>
	<span>접수기간 및 방법과 인사담당자의 정보를 입력해주세요</span>
<div class="jobpost-item">
<table>
	<tr>
		<th>접수기간</th>
		<td>
			<input type="date" name="closing" required="required">
	</tr>
	<tr>
		<th>담당자 성함</th>
		<td><input type="text" name="managerName" required="required"></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="tel" name="managerTel" required="required"	pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxxx"
		title="전화번호 형식 xxx-xxxx-xxxx"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="managerEmail" required="required"></td>
	</tr>
</table>
<table>
	<tr>
		<th>복리후생</th>
	<td><div id="welFares"></div>
	  <div class="dropdown_jw">
	  <button type="button" class="dropbtn_jw" onclick="myFunction_jw()">수정/추가하기
	    <i class="fa fa-caret-down"></i>
	  </button>
	  <div class="dropdown_jw-content" id="myDropdown_jw">
	<div class="tab">
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'health')" id="defaultOpen_jw">건강/의료</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'habitation')">주거</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'reward')">수당/포상</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'leave')">휴가/휴직</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'supportFund')">대출/지원금</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'meal')">식사</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'parenting')">출산/육아</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'selfEnrichment')">자기계발</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'hobby')">취미</button>
	  <button type="button" class="tablinks_jw" onclick="openDropdown_jw(event, 'etc')">기타</button>
	</div>
	
	<div id="health" class="tabcontent_jw">
		<label for="he0">건강검진 지원</label>
		<input type="checkbox" name="jWelfare" value="건강검진 지원" id="he0"><p>
		<label for="he1">의료비 지원</label>
		<input type="checkbox" name="jWelfare" value="의료비 지원" id="he1"><p>
		<label for="he2">치과 치료비 지원</label>
		<input type="checkbox" name="jWelfare" value="치과 치료비 지원" id="he2"><p>
		<label for="he3">체력 단련비 지원</label>
		<input type="checkbox" name="jWelfare" value="체력 단련비 지원" id="he3"><p>
	</div>
	
	<div id="habitation" class="tabcontent_jw">
		<label for="ha0">주택지원대출</label>
		<input type="checkbox" name="jWelfare" value="주택지원대출" id="ha0"><p>
		<label for="ha1">사택/기숙사 운영 및 지원</label>
		<input type="checkbox" name="jWelfare" value="사택/기숙사 운영 및 지원" id="ha1"><p>
	</div>
	
	<div id="reward" class="tabcontent_jw">
		<label for="re0">야근 수당</label>
		<input type="checkbox" name="jWelfare" value="야근 수당" id="re0"><p>
		<label for="re1">휴일 특근 수당</label>
		<input type="checkbox" name="jWelfare" value="휴일 특근 수당" id="re1"><p>
		<label for="re2">우수사원 금전포상</label>
		<input type="checkbox" name="jWelfare" value="우수사원 금전포상" id="re2"><p>
		<label for="re3">장기근속자 금전포상</label>
		<input type="checkbox" name="jWelfare" value="장기근속자 금전포상" id="re3"><p>
	</div>
	
	<div id="leave" class="tabcontent_jw">
		<label for="lea0">결혼휴가</label>
		<input type="checkbox" name="jWelfare" value="결혼휴가" id="lea0"><p>
		<label for="lea1">리프레쉬/장기근속 휴가</label>
		<input type="checkbox" name="jWelfare" value="리프레쉬/장기근속 휴가" id="lea1"><p>
		<label for="lea2">장례휴가(부모,조부모)</label>
		<input type="checkbox" name="jWelfare" value="장례휴가(부모,조부모)" id="lea2"><p>
		<label for="lea3">유급병가</label>
		<input type="checkbox" name="jWelfare" value="유급병가" id="lea3"><p>
		<label for="lea4">무급휴직</label>
		<input type="checkbox" name="jWelfare" value="무급휴직" id="lea4"><p>
	</div>
	
	<div id="supportFund" class="tabcontent_jw">
		<label for="su0">직원 대출지원</label>
		<input type="checkbox" name="jWelfare" value="직원 대출지원" id="su0"><p>
		<label for="su1">통신비 지원</label>
		<input type="checkbox" name="jWelfare" value="통신비 지원" id="su1"><p>
		<label for="su3">선택적 복리후생</label>
		<input type="checkbox" name="jWelfare" value="선택적 복리후생" id="su3"><p>
		<label for="su4">경조사 지원</label>
		<input type="checkbox" name="jWelfare" value="경조사 지원" id="su4"><p>
		<label for="su5">자녀 학자금 지원(유치원~대학교)</label>
		<input type="checkbox" name="jWelfare" value="자녀 학자금 지원(유치원~대학교)" id="su5"><p>
		<label for="su6">명절선물/귀향비</label>
		<input type="checkbox" name="jWelfare" value="명절선물/귀향비" id="su6"><p>
	</div>
	
	<div id="meal" class="tabcontent_jw">
		<label for="me0">아침식사 지원/제공</label>
		<input type="checkbox" name="jWelfare" value="아침식사 지원/제공" id="me0"><p>
		<label for="me1">점심식사 지원/제공</label>
		<input type="checkbox" name="jWelfare" value="점심식사 지원/제공" id="me1"><p>
		<label for="me2">저녁식사 지원/제공</label>
		<input type="checkbox" name="jWelfare" value="저녁식사 지원/제공" id="me2"><p>
		<label for="me3">구내식당 운영</label>
		<input type="checkbox" name="jWelfare" value="구내식당 운영" id="me3"><p>
	</div>
	
	<div id="parenting" class="tabcontent_jw">
		<label for="pa0">어린이집 지원/운영</label>
		<input type="checkbox" name="jWelfare" value="어린이집 지원/운영" id="pa0"><p>
		<label for="pa1">기타 육아비 지원</label>
		<input type="checkbox" name="jWelfare" value="기타 육아비 지원" id="pa1"><p>
	</div>
	
	<div id="selfEnrichment" class="tabcontent_jw">
		<label for="se0">도서구입비 지원</label>
		<input type="checkbox" name="jWelfare" value="도서구입비 지원" id="se0"><p>
		<label for="se1">어학 교육비 지원</label>
		<input type="checkbox" name="jWelfare" value="어학 교육비 지원" id="se1"><p>
		<label for="se2">대학원,유학 지원</label>
		<input type="checkbox" name="jWelfare" value="대학원,유학 지원" id="se2"><p>
		<label for="se3">기타 자기계발비 지원</label>
		<input type="checkbox" name="jWelfare" value="기타 자기계발비 지원" id="se3"><p>
	</div>
	
	<div id="hobby" class="tabcontent_jw">
		<label for="ho0">사내 동호회 지원</label>
		<input type="checkbox" name="jWelfare" value="사내 동호회 지원" id="ho0"><p>
		<label for="ho1">콘도 및 휴양시설 지원</label>
		<input type="checkbox" name="jWelfare" value="콘도 및 휴양시설 지원" id="ho1"><p>
		<label for="ho2">수면실 유무</label>
		<input type="checkbox" name="jWelfare" value="수면실 유무" id="ho2"><p>
		<label for="ho3">애완동물 친화</label>
		<input type="checkbox" name="jWelfare" value="애완동물 친화" id="ho3"><p>
		<label for="ho4">안마기 설치</label>
		<input type="checkbox" name="jWelfare" value="안마기 설치" id="ho4"><p>
		<label for="ho5">문화생활비 지원</label>
		<input type="checkbox" name="jWelfare" value="문화생활비 지원" id="ho5"><p>
	</div>
	
	<div id="etc" class="tabcontent_jw">
		<label for="et0">기타 복지</label>
		<input type="checkbox" name="jWelfare" value="기타 복지" id="et0"><p>
	</div>
	<div class="foot">
		<a id="conf4">확인</a>
		<a id="cancel4">닫기</a>
		<a id="init4">초기화</a>
	 </div>
	  </div>
	  </div>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>
		<input type="text" name="jSubject" required="required">
		</td>
	</tr>
	<tr>
		<th>상세내용</th>
		<td>
			<textarea rows="20" cols="100" name="jContent" required="required"></textarea>
		</td>
	</tr>
</table>
</div>
		<div class="jobpost-confirm">
			<span><button id="insert" type="submit">공고등록</button></span>
			<span><button type="reset">초기화</button></span>
			<span><button type="reset" onclick="back();">취소</button></span>
		</div>
</form>
</body>
</html>