package mvc.estate.vo;

import java.util.Arrays;

public class EstateSearchVO {
	private int[] build,rentv,floor,room;
	private String deposits_from,deposits_to,monthmoenys_from,monthmoenys_to,trades_from,trades_to,
	roomArea_from,roomArea_to,roomCare_from,roomCare_to,keyword;
	private String buildType;
	
	
	
	public String getBuildType() {
		return buildType;
	}
	public void setBuildType(String buildType) {
		this.buildType = buildType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int[] getBuild() {
		return build;
	}
	public void setBuild(int[] build) {
		this.build = build;
	}
	public int[] getRentv() {
		return rentv;
	}
	public void setRentv(int[] rentv) {
		this.rentv = rentv;
	}
	public int[] getFloor() {
		return floor;
	}
	public void setFloor(int[] floor) {
		this.floor = floor;
	}
	public int[] getRoom() {
		return room;
	}
	public void setRoom(int[] room) {
		this.room = room;
	}
	public String getDeposits_from() {
		return deposits_from;
	}
	public void setDeposits_from(String deposits_from) {
		this.deposits_from = deposits_from;
	}
	public String getDeposits_to() {
		return deposits_to;
	}
	public void setDeposits_to(String deposits_to) {
		this.deposits_to = deposits_to;
	}
	public String getMonthmoenys_from() {
		return monthmoenys_from;
	}
	public void setMonthmoenys_from(String monthmoenys_from) {
		this.monthmoenys_from = monthmoenys_from;
	}
	public String getMonthmoenys_to() {
		return monthmoenys_to;
	}
	public void setMonthmoenys_to(String monthmoenys_to) {
		this.monthmoenys_to = monthmoenys_to;
	}
	public String getTrades_from() {
		return trades_from;
	}
	public void setTrades_from(String trades_from) {
		this.trades_from = trades_from;
	}
	public String getTrades_to() {
		return trades_to;
	}
	public void setTrades_to(String trades_to) {
		this.trades_to = trades_to;
	}
	public String getRoomArea_from() {
		return roomArea_from;
	}
	public void setRoomArea_from(String roomArea_from) {
		this.roomArea_from = roomArea_from;
	}
	public String getRoomArea_to() {
		return roomArea_to;
	}
	public void setRoomArea_to(String roomArea_to) {
		this.roomArea_to = roomArea_to;
	}
	public String getRoomCare_from() {
		return roomCare_from;
	}
	public void setRoomCare_from(String roomCare_from) {
		this.roomCare_from = roomCare_from;
	}
	public String getRoomCare_to() {
		return roomCare_to;
	}
	public void setRoomCare_to(String roomCare_to) {
		this.roomCare_to = roomCare_to;
	}
	@Override
	public String toString() {
		return "EstateSearchVO [build=" + Arrays.toString(build) + ", rentv=" + Arrays.toString(rentv) + ", floor="
				+ Arrays.toString(floor) + ", room=" + Arrays.toString(room) + ", deposits_from=" + deposits_from
				+ ", deposits_to=" + deposits_to + ", monthmoenys_from=" + monthmoenys_from + ", monthmoenys_to="
				+ monthmoenys_to + ", trades_from=" + trades_from + ", trades_to=" + trades_to + ", roomArea_from="
				+ roomArea_from + ", roomArea_to=" + roomArea_to + ", roomCare_from=" + roomCare_from + ", roomCare_to="
				+ roomCare_to + "]";
	}
	

}
