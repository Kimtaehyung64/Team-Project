package mvc.customer.vo;

import java.util.Date;

public class Customer_BoardVO {
//	ANUM NUMBER NOT NULL,
//	C_NUM NUMBER(10) PRIMARY KEY,
//	C_CONTENT VARCHAR2(4000) NOT NULL,
//	C_SUBJECT VARCHAR2(50) NOT NULL,
//	C_TYPE VARCHAR2(500) NOT NULL,
//	C_REGDATE DATE DEFAULT SYSDATE,
//	C_ANSCHK NUMBER(1) DEFAULT 0 NOT NULL,
//	
	private int anum;
	private int c_num;
	private String c_content;
	private String c_subject;
	private String c_type;
	private String c_regdate;
	private String c_anschk;
	private String aid;
	private int c_del;
	private String c_ans;
	public String getC_ans() {
		return c_ans;
	}
	public void setC_ans(String c_ans) {
		this.c_ans = c_ans;
	}
	public int getC_del() {
		return c_del;
	}
	public void setC_del(int c_del) {
		this.c_del = c_del;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_subject() {
		return c_subject;
	}
	public void setC_subject(String c_subject) {
		this.c_subject = c_subject;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	
	public String getC_regdate() {
		return c_regdate;
	}
	public void setC_regdate(String c_regdate) {
		this.c_regdate = c_regdate;
	}
	public String getC_anschk() {
		return c_anschk;
	}
	public void setC_anschk(String c_anschk) {
		this.c_anschk = c_anschk;
	}

	
}
