package mvc.estate.vo;

import java.util.List;

import mvc.signup.vo.SignUpVO;

public class ForSaleVO {
	
	
//	fnum	number		NULL, -- 매물번호 (primarykey)
//	anum	number		NULL, -- 회원번호 (foreignkey)
//	fkind	VARCHAR2(255)		NULL, -- 매물종류
//	fsalekind	VARCHAR2(255)		NULL, -- 거래종류
//	deposit	number NULL, -- 보증금
//	rent	number		NULL, -- 임대료
//	fstatus	VARCHAR2(255)		NULL,-- 거래상태
//   addDate DATE default sysdate -- 등록날짜
	
 private int fnum,anum,idx;
 
 private String fkind,fsalekind,deposit,rent,fstatus,addDate,subject;
 private ForSale_InfoVO finvo;
 private List<Forsale_ImgVO> fimg;
 private SignUpVO sign;
 private List<Integer> nums;
 
 
 
public List<Integer> getNums() {
	return nums;
}
public void setNums(List<Integer> nums) {
	this.nums = nums;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public SignUpVO getSign() {
	return sign;
}
public void setSign(SignUpVO sign) {
	this.sign = sign;
}

public List<Forsale_ImgVO> getFimg() {
	return fimg;
}
public void setFimg(List<Forsale_ImgVO> fimg) {
	this.fimg = fimg;
}
public int getFnum() {
	return fnum;
}
public void setFnum(int fnum) {
	this.fnum = fnum;
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
public String getDeposit() {
	return deposit;
}
public void setDeposit(String deposit) {
	this.deposit = deposit;
}
public String getRent() {
	return rent;
}
public void setRent(String rent) {
	this.rent = rent;
}
public String getFstatus() {
	return fstatus;
}
public void setFstatus(String fstatus) {
	this.fstatus = fstatus;
}
public ForSale_InfoVO getFinvo() {
	return finvo;
}
public void setFinvo(ForSale_InfoVO finvo) {
	this.finvo = finvo;
}
public String getAddDate() {
	return addDate;
}
public void setAddDate(String addDate) {
	this.addDate = addDate;
}
 
 
}
