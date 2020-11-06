package kr.or.market.dto;

public class CommunityDTO {
	private String user;
	private String title;
	private String content;
	private String regDate;
	private int totalCnt; // 리스트 수

	public CommunityDTO() {

	}

	public CommunityDTO(String user, String title, String content) {
		super();
		this.user = user;
		this.title = title;
		this.content = content;
	}
	
	public CommunityDTO(String user, String title, String content, String regDate) {
		super();
		this.user = user;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
	}

	// TODO : totalCnt가 없으면 삭제해주기
	public CommunityDTO(String user, String title, String content, String regDate, int totalCnt) {
		super();
		this.user = user;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.totalCnt = totalCnt;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
}
