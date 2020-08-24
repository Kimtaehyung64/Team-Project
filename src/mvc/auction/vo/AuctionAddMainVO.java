package mvc.auction.vo;

/*
create table actmain(
anum number,
bid varchar2(80) not null,
byongdo number not null,
baddra varchar2(300) not null,
baddrb varchar2(300) not null,
bzipcode varchar2(20) not null,
bweight number,
tweight number,
hit number,
indate date default sysdate,
chgdate date,
constraint actmain_anum_pk primary key(anum)
); 
*/  
public class AuctionAddMainVO {
	private int anum,byongdo;
	private double bweight,tweight;
	private String bid,baddra,baddrb,bzipcode;
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getByongdo() {
		return byongdo;
	}
	public void setByongdo(int byongdo) {
		this.byongdo = byongdo;
	}
	public double getBweight() {
		return bweight;
	}
	public void setBweight(double bweight) {
		this.bweight = bweight;
	}
	public double getTweight() {
		return tweight;
	}
	public void setTweight(double tweight) {
		this.tweight = tweight;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBaddra() {
		return baddra;
	}
	public void setBaddra(String baddra) {
		this.baddra = baddra;
	}
	public String getBaddrb() {
		return baddrb;
	}
	public void setBaddrb(String baddrb) {
		this.baddrb = baddrb;
	}
	public String getBzipcode() {
		return bzipcode;
	}
	public void setBzipcode(String bzipcode) {
		this.bzipcode = bzipcode;
	}
	
	
}
