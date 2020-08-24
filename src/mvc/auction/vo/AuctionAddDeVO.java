package mvc.auction.vo;

import org.springframework.web.multipart.MultipartFile;

/*
create table actmainde(
adnum number,
anum number,
managepee varchar2(4000),
bplan varchar2(4000),
wimage varchar2(200),
imagea varchar2(200),
imageb varchar2(200),
imagec varchar2(200),
indate date default sysdate,
chgdate date,
constraint actmainde_adnum_pk primary key(adnum) 
);  
*/ 
public class AuctionAddDeVO {
	
	private int adnum,anum;
	private String managepee,bplan,wimage,imagea,imageb,imagec;
	private MultipartFile wimageP,imageaP,imagebP,imagecP;
	
	public int getAdnum() {
		return adnum;
	}
	public void setAdnum(int adnum) {
		this.adnum = adnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getManagepee() {
		return managepee;
	}
	public void setManagepee(String managepee) {
		this.managepee = managepee;
	}
	public String getBplan() {
		return bplan;
	}
	public void setBplan(String bplan) {
		this.bplan = bplan;
	}
	public String getWimage() {
		return wimage;
	}
	public void setWimage(String wimage) {
		this.wimage = wimage;
	}
	public String getImagea() {
		return imagea;
	}
	public void setImagea(String imagea) {
		this.imagea = imagea;
	}
	public String getImageb() {
		return imageb;
	}
	public void setImageb(String imageb) {
		this.imageb = imageb;
	}
	public String getImagec() {
		return imagec;
	}
	public void setImagec(String imagec) {
		this.imagec = imagec;
	}
	public MultipartFile getWimageP() {
		return wimageP;
	}
	public void setWimageP(MultipartFile wimageP) {
		this.wimageP = wimageP;
	}
	public MultipartFile getImageaP() {
		return imageaP;
	}
	public void setImageaP(MultipartFile imageaP) {
		this.imageaP = imageaP;
	}
	public MultipartFile getImagebP() {
		return imagebP;
	}
	public void setImagebP(MultipartFile imagebP) {
		this.imagebP = imagebP;
	}
	public MultipartFile getImagecP() {
		return imagecP;
	}
	public void setImagecP(MultipartFile imagecP) {
		this.imagecP = imagecP;
	}
}
