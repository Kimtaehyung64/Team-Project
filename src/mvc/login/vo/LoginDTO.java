package mvc.login.vo;

public class LoginDTO {
	private String aid;
	private String apwd;
	private String agubun;  
	private boolean userCookie;
	 
	public String getAgubun() {
		return agubun;
	}
	public void setAgubun(String agubun) {
		this.agubun = agubun;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	} 
	public boolean isUserCookie() {
		return userCookie;
	}
	public void setUserCookie(boolean userCookie) {
		this.userCookie = userCookie;
	}
}
