package mvc.estate.vo;

import java.util.List;



public class EstateVO {
	// A01 = 아파트
	// A02 = 오피스텔
	// C01 = 원룸
	// C02 = 투룸
	// C03 = 쓰리룸
	private int pdnum,anum,r_num,idx;
	private String build,floor,plocation,detaillocation,lat,lng;
	private String[] subbuild;

	private double supply,exclusive; //공급 / 전용면적

	private String  title,dan; //  제목
	private AddInfoVO addinfo;
	private String rltrnm;
	private String[] imgName,rentv,rpay; 

	
	
	
	
	
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
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String[] getRentv() {
		return rentv;
	}
	public void setRentv(String[] rentv) {
		this.rentv = rentv;
	}
	public String getDan() {
		return dan;
	}
	public void setDan(String dan) {
		this.dan = dan;
	}
	public String[] getRpay() {
		return rpay;
	}
	public void setRpay(String[] rpay) {
		this.rpay = rpay;
	}
	public String getDetaillocation() {
		return detaillocation;
	}
	public void setDetaillocation(String detaillocation) {
		this.detaillocation = detaillocation;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public String[] getImgName() {
		return imgName;
	}
	public void setImgName(String[] imgName) {
		this.imgName = imgName;
	}
	public String getRltrnm() {
		return rltrnm;
	}
	public void setRltrnm(String rltrnm) {
		this.rltrnm = rltrnm;
	}
	public AddInfoVO getAddinfo() {
		return addinfo;
	}
	public void setAddinfo(AddInfoVO addinfo) {
		this.addinfo = addinfo;
	}
	public String getPlocation() {
		return plocation;
	}
	public void setPlocation(String plocation) {
		this.plocation = plocation;
	}

	public int getPdnum() {
		return pdnum;
	}
	public void setPdnum(int pdnum) {
		this.pdnum = pdnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBuild() {
		return build;
	}
	public void setBuild(String build) {
		this.build = build;
	}
	
	public String[] getSubbuild() {
		return subbuild;
	}
	public void setSubbuild(String[] subbuild) {
		this.subbuild = subbuild;
	}
	public String getFloor() {
		return floor;
	} 
	public void setFloor(String floor) {
		this.floor = floor;
	}

	public double getSupply() {
		return supply;
	}
	public void setSupply(double supply) {
		this.supply = supply;
	}
	public double getExclusive() {
		return exclusive;
	}
	public void setExclusive(double exclusive) {
		this.exclusive = exclusive;
	}



	
	
	
}
