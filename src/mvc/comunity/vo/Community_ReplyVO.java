package mvc.comunity.vo;

public class Community_ReplyVO {
	
	private int renum, wnum;
	private String r_text, r_writer, pr_writer;
	private String rindate, rchgdate;
	
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public int getWnum() {
		return wnum;
	}
	public void setWnum(int wnum) {
		this.wnum = wnum;
	}
	public String getR_text() {
		return r_text;
	}
	public void setR_text(String r_text) {
		this.r_text = r_text;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	
	public String getPr_writer() {
		return pr_writer;
	}
	public void setPr_writer(String pr_writer) {
		this.pr_writer = pr_writer;
	}
	public String getRindate() {
		return rindate;
	}
	public void setRindate(String rindate) {
		this.rindate = rindate;
	}
	public String getRchgdate() {
		return rchgdate;
	}
	public void setRchgdate(String rchgdate) {
		this.rchgdate = rchgdate;
	}
	
}
