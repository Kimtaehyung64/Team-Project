package mvc.estate.vo;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class AddInfoVO {
	// 0 = false
	// 1 = true
	private int pidnum,pdnum,aspay,idx;
	private String pets,elevator,balcony,built,chartered,description,heating,pmove;
	private String[] structure,move, pay,administrat,imgName;
	private String pstructure;


	
	private String[] option;

	private String park;
	private int ppay;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String[] getImgName() {
		return imgName;
	}
	public void setImgName(String[] imgName) {
		this.imgName = imgName;
	}
	public String[] getPay() {
		return pay;
	}
	public void setPay(String[] pay) {
		this.pay = pay;
	}
	public String[] getAdministrat() {
		return administrat;
	}
	public void setAdministrat(String[] administrat) {
		this.administrat = administrat;
	}
	public String getHeating() {
		return heating;
	}
	public void setHeating(String heating) {
		this.heating = heating;
	}
	
	public String[] getMove() {
		return move;
	}
	public void setMove(String[] move) {
		this.move = move;
	}
	
	
	
	public String getPmove() {
		return pmove;
	}
	public void setPmove(String pmove) {
		this.pmove = pmove;
	}
	public String getPstructure() {
		return pstructure;
	}


	public void setPstructure(String pstructure) {
		this.pstructure = pstructure;
	}


	
	public String getPark() {
		return park;
	}
	public void setPark(String park) {
		this.park = park;
	}
	public int getPpay() {
		return ppay;
	}
	public void setPpay(int ppay) {
		this.ppay = ppay;
	}
	
	
	public int getAspay() {
		return aspay;
	}
	public void setAspay(int aspay) {
		this.aspay = aspay;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPidnum() {
		return pidnum;
	}
	public void setPidnum(int pidnum) {
		this.pidnum = pidnum;
	}
	public int getPdnum() {
		return pdnum;
	}
	public void setPdnum(int pdnum) {
		this.pdnum = pdnum;
	}

	public String[] getStructure() {
		return structure;
	}
	public void setStructure(String[] structure) {
		this.structure = structure;
	}
	
	public String getPets() {
		return pets;
	}
	public void setPets(String pets) {
		this.pets = pets;
	}
	public String getElevator() {
		return elevator;
	}
	public void setElevator(String elevator) {
		this.elevator = elevator;
	}
	public String getBalcony() {
		return balcony;
	}
	public void setBalcony(String balcony) {
		this.balcony = balcony;
	}
	public String getBuilt() {
		return built;
	}
	public void setBuilt(String built) {
		this.built = built;
	}
	public String getChartered() {
		return chartered;
	}
	public void setChartered(String chartered) {
		this.chartered = chartered;
	}

	public String[] getOption() {
		return option;
	}
	public void setOption(String[] option) {
		this.option = option;
	}

	
	
	
}
