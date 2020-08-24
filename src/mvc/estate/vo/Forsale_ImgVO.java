package mvc.estate.vo;

public class Forsale_ImgVO {
	
//			finum	number		 NULL, -- 이미지번호 (primarykey)
//			fnum	number		NOT NULL, -- 매물번호 (foreignkey)
//			fname	VARCHAR(255)		NULL, -- 이미지 이름
//			ftype	VARCHAR(255)		NULL -- 저장된 파일 형식
	private int finum,fnum;
	private String fname,ftype;
	
	public int getFinum() {
		return finum;
	}
	public void setFinum(int finum) {
		this.finum = finum;
	}
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	
	
}
