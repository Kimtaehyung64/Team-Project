package mvc.mypage.vo;

public class MyproductVO {
	
	private int fnum , dnum , anum ;
	private String fkind , fsalekind , dname;
	public int getFnum() {
		return fnum;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getFkind() {
		return fkind;
	}
	public void setFkind(String fkind) {
		this.fkind = fkind;
	}
	public String getFsalekind() {
		return fsalekind;
	}
	public void setFsalekind(String fsalekind) {
		this.fsalekind = fsalekind;
	}
}
