package mvc.auction.vo;

/*
select  a.anum,p.ipnum, b.wimage,fn_yongdo_name(a.byongdo) as yongdo, a.baddra as addr
       , TO_CHAR( DECODE(nvl(fn_higt_ipchalper(p.ipnum),0),0,nvl(p.ideprice,0),nvl(fn_higt_ipchalper(p.ipnum),0)),'FM999,999,999,999') as hprice
       , case when TO_NUMBER(TO_DATE(p.enddate) - TO_DATE(TO_CHAR(sysdate,'YYYY-MM-DD HH24:MI:SS'))) > 0 then TO_CHAR(p.enddate,'YYYY-MM-DD HH24:MI:SS') else '만료' end as todate 
       , p.subject
 from actmain a , actmainde b , ipchal p
where b.anum = a.anum
  and p.anum = a.anum
*/
public class AuctionMyipViewVO {
	private int anum,ipnum;
	private String wimage,addr,hprice,todate,yongdo,subject,status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getIpnum() {
		return ipnum;
	}
	public void setIpnum(int ipnum) {
		this.ipnum = ipnum;
	}
	public String getWimage() {
		return wimage;
	}
	public void setWimage(String wimage) {
		this.wimage = wimage;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getHprice() {
		return hprice;
	}
	public void setHprice(String hprice) {
		this.hprice = hprice;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getYongdo() {
		return yongdo;
	}
	public void setYongdo(String yongdo) {
		this.yongdo = yongdo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
}
