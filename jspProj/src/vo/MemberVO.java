package vo;

// 자바빈 클래스(Value Object, DTO)
public class MemberVO {
	// 멤버 변수
	// 회원 번호
	private String memNo;
	// 회원 이름
	private String memNm;
	// 탈퇴 여부
	private String enabled;

	// 기본 생성자
	public MemberVO() {
	}
	
	// getter/setter 메소드
	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}	
	
}
