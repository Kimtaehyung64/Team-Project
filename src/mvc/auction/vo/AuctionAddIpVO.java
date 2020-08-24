package mvc.auction.vo;

/*
create table ipchal(
ipnum number,
anum number,
enddate date,
ipdanwe number,
ideprice number,
status number,
subject varchar2(500),
text clob,
indate date,
chgdate date,
constraint ipchal_ipnum_pk primary key(ipnum)
);
  
  
*/
public class AuctionAddIpVO {
	private int ipnum,anum,ipdanwe,ideprice;
	private String enddate,text,subject,ir1,edate,etime;
	public int getIpnum() {
		return ipnum;
	}
	public void setIpnum(int ipnum) {
		this.ipnum = ipnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getIpdanwe() {
		return ipdanwe;
	}
	public void setIpdanwe(int ipdanwe) {
		this.ipdanwe = ipdanwe;
	}
	public int getIdeprice() {
		return ideprice;
	}
	public void setIdeprice(int ideprice) {
		this.ideprice = ideprice;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getIr1() {
		return ir1;
	}
	public void setIr1(String ir1) {
		this.ir1 = ir1;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	
	
}
