package mvc.commercial.vo;

public class RealPriceVO {
	private int year_of_completion;
	private String sigungu, dong, exclusive_use_area,  transaction_real_price, floor,transaction_id;
	
	public String getTransaction_real_price() {
		return transaction_real_price;
	}
	public void setTransaction_real_price(String transaction_real_price) {
		this.transaction_real_price = transaction_real_price;
	}
	public int getYear_of_completion() {
		return year_of_completion;
	}
	public void setYear_of_completion(int year_of_completion) {
		this.year_of_completion = year_of_completion;
	}
	public String getExclusive_use_area() {
		return exclusive_use_area;
	}
	public void setExclusive_use_area(String exclusive_use_area) {
		this.exclusive_use_area = exclusive_use_area;
	}
	
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	
}
