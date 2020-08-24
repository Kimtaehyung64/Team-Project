package mvc.estate.vo;

public class ForSale_Info_EstateVO {
//	fpenum	number		 NULL, --추가정보 번호
//	fpnum	number		NULL, -- 공용정보 번호
//	animal	VARCHAR2(255)		NULL, -- 반려동물 /
//	fcharter	VARCHAR2(255)		NULL, -- 전세자금 
//	built	VARCHAR2(255)		NULL, --빌트인 /
//	veranda	VARCHAR2(255)		NULL, --베란다
//	mpurpo	VARCHAR2(255)		NULL, -- 주용도
//	foption	VARCHAR2(255)		NULL, -- 옵션
//	fsecuri	VARCHAR2(255)		NULL, -- 보안
//	shortrent	VARCHAR2(255)		NULL, -- 단기임대
//	monthly	VARCHAR2(500)		NULL, -- 월세
//	charter	VARCHAR2(500)		NULL, -- 전세
//  fsubject	VARCHAR2(500)		NULL -- 매물제목
//  trades  varchar2(500) null -- 매매
 private int fpenum,fpnum;
 private String fsubject,animal,fcharter,built,veranda,mpurpo,foption,fsecuri,shortrent,monthly,charter,trades;
 
 
public String getTrades() {
	return trades;
}
public void setTrades(String trades) {
	this.trades = trades;
}
public String getFsubject() {
	return fsubject;
}
public void setFsubject(String fsubject) {
	this.fsubject = fsubject;
}
public int getFpenum() {
	return fpenum;
}
public void setFpenum(int fpenum) {
	this.fpenum = fpenum;
}
public int getFpnum() {
	return fpnum;
}
public void setFpnum(int fpnum) {
	this.fpnum = fpnum;
}

public String getAnimal() {
	return animal;
}
public void setAnimal(String animal) {
	this.animal = animal;
}
public String getFcharter() {
	return fcharter;
}
public void setFcharter(String fcharter) {
	this.fcharter = fcharter;
}
public String getBuilt() {
	return built;
}
public void setBuilt(String built) {
	this.built = built;
}
public String getVeranda() {
	return veranda;
}
public void setVeranda(String veranda) {
	this.veranda = veranda;
}
public String getMpurpo() {
	return mpurpo;
}
public void setMpurpo(String mpurpo) {
	this.mpurpo = mpurpo;
}
public String getFoption() {
	return foption;
}
public void setFoption(String foption) {
	this.foption = foption;
}
public String getFsecuri() {
	return fsecuri;
}
public void setFsecuri(String fsecuri) {
	this.fsecuri = fsecuri;
}
public String getShortrent() {
	return shortrent;
}
public void setShortrent(String shortrent) {
	this.shortrent = shortrent;
}
public String getMonthly() {
	return monthly;
}
public void setMonthly(String monthly) {
	this.monthly = monthly;
}
public String getCharter() {
	return charter;
}
public void setCharter(String charter) {
	this.charter = charter;
}
 
}
