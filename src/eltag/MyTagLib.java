package eltag;

import model.MemberDAO;

public class MyTagLib {

	/*
	 EL에서 Java클래스의 메소드 호출 절차 및 방법
	 1. 클래스와 메소드를 정의한다. 단, 메소드 정의시 반드시 public static
	 으로 선언해야 한다.
	 */
	
	/*
	 메소드설명 : 매개변수로 전달된 문자열에 숫자가 아닌 문자가
	 	포함되어 있으면 false를 반환하고, 전체가숫자일때
	 	true를 반환한다.
	 */
	public static boolean isNumber(String value) {		
		char[] chArr = value.toCharArray();
		for(int i=0; i<chArr.length; i++) {
			if(!(chArr[i]>='0' && chArr[i]<='9')) {
				return false;
			}
		}
		return true;
	}
	
	/*
	 메소드설명 : 매개변수로 주민번호를 전달받아 성별을 판단하여 반환하는
	 	메소드를 작성한다. 주민번호는 123456-7890123형태로 전달한다.
	
	-- 내가 짠 메소드
	public static String getGender(String value) {
		char[] chArr2 = value.toCharArray();
		for(int i=0; i<chArr2.length; i++) {
			if(chArr2[7]=='1') {
				return "남자입니다.";
			}else if(chArr2[7]=='2') {
				return "여자입니다.";
			}
		}
		return "잘못된 주민번호입니다.";
	}
	*/
	public static String getGender(String jumin) {
		
		String returnStr="";
		//indexOf()를 통해 -(하이픈)의 위치를 찾는다.
		int beginIdx = jumin.indexOf("-") +1; //1을 더하면 성별을 표현하는 숫자가 된다.
		//위에서 구한 index를 사용해서 성별에 해당하는 문자를 가져와서 저장한다.
		String genderStr = jumin.substring(beginIdx, beginIdx+1);
		//성별을 표현하는 문자열을 정수로 변환하여 성별을 판단한다.
		if(Integer.parseInt(genderStr)==1 || Integer.parseInt(genderStr)==3) {
			returnStr = "남자";
		}else if(Integer.parseInt(genderStr)==2 || Integer.parseInt(genderStr)==4) {
			returnStr = "여자";
		}else {
			returnStr = "주민번호 오류ㅠㅠ";
		}
		
		return returnStr;
	}
	
	/*
	 아이디/패스워드, DB연결을 위한 드라이버, URL을 인자로 받아
	 회원여부를 판단하여 true/false를 반환해주는 메소드.
	 */
	public static boolean memberLogin(String id, String pw, String drv, String url) {
		//1. DB연결을 위한 객체생성
		MemberDAO dao = new MemberDAO(drv, url); 
		
		//2. 아이디/패스워드를 통한 회원인증 및 결과반환
		boolean isBool = dao.isMember(id, pw);
		
		//3. 2번에서의 결과를 호출한 지점으로 반환
		return isBool;
		
	}
	
}
