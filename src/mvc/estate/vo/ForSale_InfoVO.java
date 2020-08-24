package mvc.estate.vo;

public class ForSale_InfoVO {
//	fpnum	number		NULL, -- 공용정보번호 (primarykey)
//	fnum	number		NULL, -- 매물번호 (foreignkey)
//	flocation	VARCHAR2(500)		NULL,-- 주소
 // zipNo varchar2(100) null, -- 우편번호
//	tfloor	VARCHAR2(255)		NULL, -- 해당층
//	bfloor	VARCHAR2(255)		NULL, -- 건물층
//	fexarea	VARCHAR2(255)		NULL, -- 전용면적
//	fsuparea	VARCHAR2(255)		NULL, -- 공급면적
//	heating	VARCHAR2(255)		NULL, -- 난방
//	fcontent	VARCHAR2(2000)		NULL, -- 매물설명
//	fadmin	VARCHAR2(255)		NULL, -- 관리비
//	fadop	VARCHAR2(255)		NULL, -- 관리비 옵션
//	eleva	VARCHAR2(255)		NULL, --엘리베이터
//	fmove	VARCHAR2(255)		NULL, -- 입주
//	district varchar2(255) null, -- 구
//	admindong varchar2(255) null, -- 동
//	lat varchar2(255) null, --위도
//	lng varchar2(255) null, --경도
// fsubject varchar2(500) null,
	private int fpnum,fnum,idx;
	private String flocation,zipNo,tfloor,bfloor,fexarea,fsuparea,heating,fcontent,fadmin,fadop,eleva,fmove,district,admindong,lat,lng,fsubject;
	private ForSale_Info_EstateVO fievo;
	private ForSale_Info_StoreVO fisvo;
	
	
	public String getFsubject() {
		return fsubject;
	}
	public void setFsubject(String fsubject) {
		this.fsubject = fsubject;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getAdmindong() {
		return admindong;
	}
	public void setAdmindong(String admindong) {
		this.admindong = admindong;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public int getFpnum() {
		return fpnum;
	}
	public void setFpnum(int fpnum) {
		this.fpnum = fpnum;
	}
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getFlocation() {
		return flocation;
	}
	public void setFlocation(String flocation) {
		this.flocation = flocation;
	}
	public String getZipNo() {
		return zipNo;
	}
	public void setZipNo(String zipNo) {
		this.zipNo = zipNo;
	}
	public String getTfloor() {
		return tfloor;
	}
	public void setTfloor(String tfloor) {
		this.tfloor = tfloor;
	}
	public String getBfloor() {
		return bfloor;
	}
	public void setBfloor(String bfloor) {
		this.bfloor = bfloor;
	}
	public String getFexarea() {
		return fexarea;
	}
	public void setFexarea(String fexarea) {
		this.fexarea = fexarea;
	}
	public String getFsuparea() {
		return fsuparea;
	}
	public void setFsuparea(String fsuparea) {
		this.fsuparea = fsuparea;
	}
	public String getHeating() {
		return heating;
	}
	public void setHeating(String heating) {
		this.heating = heating;
	}
	public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}
	public String getFadmin() {
		return fadmin;
	}
	public void setFadmin(String fadmin) {
		this.fadmin = fadmin;
	}
	public String getFadop() {
		return fadop;
	}
	public void setFadop(String fadop) {
		this.fadop = fadop;
	}
	public String getEleva() {
		return eleva;
	}
	public void setEleva(String eleva) {
		this.eleva = eleva;
	}
	public String getFmove() {
		return fmove;
	}
	public void setFmove(String fmove) {
		this.fmove = fmove;
	}
	public ForSale_Info_EstateVO getFievo() {
		return fievo;
	}
	public void setFievo(ForSale_Info_EstateVO fievo) {
		this.fievo = fievo;
	}
	public ForSale_Info_StoreVO getFisvo() {
		return fisvo;
	}
	public void setFisvo(ForSale_Info_StoreVO fisvo) {
		this.fisvo = fisvo;
	}
	

}
