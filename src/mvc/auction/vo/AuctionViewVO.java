package mvc.auction.vo;

/*
select a.anum,a.bid,fn_yongdo_name(a.byongdo) as yongdo,a.baddra as addr,a.bweight,a.tweight,a.hit,b.wimage,p.ideprice,p.subject,p.enddate,nvl(fn_higt_ipchalper(p.ipnum),0)  as hprice  
 from actmain a , actmainde b , ipchal p
where b.anum = a.anum
  and p.anum = a.anum
*/
public class AuctionViewVO {
	private int anum,hit,youc;
	private double tweight,bweight;
	private String bid,yongdo,addr,wimage,subject,enddate,ideprice,hprice,status,indate;
	
	public int getYouc() {
		return youc;
	}
	public void setYouc(int youc) {
		this.youc = youc;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public double getTweight() {
		return tweight;
	}
	public void setTweight(double tweight) {
		this.tweight = tweight;
	}
	public double getBweight() {
		return bweight;
	} 
	public void setBweight(double bweight) {
		this.bweight = bweight;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getYongdo() {
		return yongdo;
	}
	public void setYongdo(String yongdo) {
		this.yongdo = yongdo;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getWimage() {
		return wimage;
	}
	public void setWimage(String wimage) {
		this.wimage = wimage;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getIdeprice() {
		return ideprice;
	}
	public void setIdeprice(String ideprice) {
		this.ideprice = ideprice;
	}
	public String getHprice() {
		return hprice;
	}
	public void setHprice(String hprice) {
		this.hprice = hprice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	
}
