package mvc.signup.vo;

import mvc.mypage.vo.Member_DetailVO;
import mvc.payment.vo.PaymentVO;

public class SignUpVO {
	
	private int anum,dnum;
	private String aidheader,aidfooter,aid,
	apwd,agubun,dname,
	dyear,dmonth,dday,dbirth,
	dgender,ainday,achgday,
	dtelheader,dtelmiddle,dtelfooter,dtel;
	private Member_DetailVO memberinfor ;
	private PaymentVO payvo;
	
	// 200813 공인중개사 주소를 위한 컬럼 추가
	private String daddress, dcname;
	
	public String getDaddress() {
		return daddress;
	}
	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}
	public String getDcname() {
		return dcname;
	}
	public void setDcname(String dcname) {
		this.dcname = dcname;
	}
	// 200813 공인중개사 주소를 위한 컬럼 추가
	
	public String getAchgday() {
		return achgday;
	}
	public void setAchgday(String achgday) {
		this.achgday = achgday;
	}
	public String getAinday() {
		return ainday;
	}
	public void setAinday(String ainday) {
		this.ainday = ainday;
	}
	public Member_DetailVO getMemberinfor() {
		return memberinfor;
	}
	public void setMemberinfor(Member_DetailVO memberinfor) {
		this.memberinfor = memberinfor;
	}
	public PaymentVO getPayvo() {
		return payvo;
	} 
	public void setPayvo(PaymentVO payvo) {
		this.payvo = payvo;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	
	public String getAidheader() {
		return aidheader;
	}
	public void setAidheader(String aidheader) {
		this.aidheader = aidheader;
	}
	public String getAidfooter() {
		return aidfooter;
	}
	public void setAidfooter(String aidfooter) {
		this.aidfooter = aidfooter;
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
	public String getDyear() {
		return dyear;
	}
	public void setDyear(String dyear) {
		this.dyear = dyear;
	}
	public String getDmonth() {
		return dmonth;
	}
	public void setDmonth(String dmonth) {
		this.dmonth = dmonth;
	}
	public String getDday() {
		return dday;
	}
	public void setDday(String dday) {
		this.dday = dday;
	}
	
	public String getDbirth() {
		return dbirth;
	}
	public void setDbirth(String dbirth) {
		this.dbirth = dbirth;
	}
	public String getDgender() {
		return dgender;
	}
	public void setDgender(String dgender) {
		this.dgender = dgender;
	}
	public String getDtelheader() {
		return dtelheader;
	}
	public void setDtelheader(String dtelheader) {
		this.dtelheader = dtelheader;
	}
	public String getDtelmiddle() {
		return dtelmiddle;
	}
	public void setDtelmiddle(String dtelmiddle) {
		this.dtelmiddle = dtelmiddle;
	}
	public String getDtelfooter() {
		return dtelfooter;
	}
	public void setDtelfooter(String dtelfooter) {
		this.dtelfooter = dtelfooter;
	}
	public String getDtel() {
		return dtel;
	}
	public void setDtel(String dtel) {
		this.dtel = dtel;
	}
}
