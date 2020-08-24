package mvc.login.vo;

public class UserVO {
	private int anum;
	private String dname;
	private String dgender;
	private String dtel;
	private String dbirth;
	private String aid;
	private String apwd; 
	private String agubun;
	private String pgubun;
	public String getPgubun() {
		return pgubun;
	}
	public void setPgubun(String pgubun) {
		this.pgubun = pgubun;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getAgubun() {
		return agubun;
	}
	public void setAgubun(String agubun) {
		this.agubun = agubun;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDgender() {
		return dgender;
	}
	public void setDgender(String dgender) {
		this.dgender = dgender;
	} 
	public String getDtel() {
		return dtel;
	}
	public void setDtel(String dtel) {
		this.dtel = dtel;
	}
	public String getDbirth() {
		return dbirth;
	}
	public void setDbirth(String dbirth) {
		this.dbirth = dbirth;
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

}
