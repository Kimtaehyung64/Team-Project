

package mvc.payment.vo;

public class PaymentVO {
	private int pnum , anum , ppay, monthnum;
	private String psdate , pedate , pway , pgubun ;
	
	private Payment_DetailVO paydetailvo ; 
	
	
	public int getMonthnum() {
		return monthnum;
	}
	public void setMonthnum(int monthnum) {
		this.monthnum = monthnum;
	}
	public Payment_DetailVO getPaydetailvo() {
		return paydetailvo; 
	}
	public void setPaydetailvo(Payment_DetailVO paydetailvo) {
		this.paydetailvo = paydetailvo;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	} 
	public int getPpay() {
		return ppay;
	}
	public void setPpay(int ppay) {
		this.ppay = ppay;
	}
	public String getPsdate() {
		return psdate;
	}
	public void setPsdate(String psdate) {
		this.psdate = psdate;
	}
	public String getPedate() {
		return pedate;
	}
	public void setPedate(String pedate) {
		this.pedate = pedate;
	}
	public String getPway() {
		return pway;
	}
	public void setPway(String pway) {
		this.pway = pway;
	}
	public String getPgubun() {
		return pgubun;
	}
	public void setPgubun(String pgubun) {
		this.pgubun = pgubun;
	}

}
