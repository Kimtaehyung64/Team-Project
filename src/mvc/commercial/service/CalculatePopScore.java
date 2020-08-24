package mvc.commercial.service;

import java.util.ArrayList;
import java.util.List;

import mvc.commercial.vo.PopVO;
public class CalculatePopScore {
	private int minbusi;
	private int maxbusi;
	private int minfpop;
	private int maxfpop;
	private int minalpop;
	private int maxalpop;
	public CalculatePopScore(PopVO vo) {
		minbusi = vo.getBusimin();
		maxbusi = vo.getBusimax();
		minfpop = vo.getFmin();
		maxfpop = vo.getFmax();
		minalpop = vo.getAlmin();
		maxalpop = vo.getAlmax();
	}
	public String getBusiPopScore(Float pop){
		Float score = ((pop - minbusi)/(maxbusi - minbusi)) * 5;
		return String.format("%.2f",score);
	}
	public String getfPopScore(Float pop){
		Float score = ((pop - minfpop)/(maxfpop - minfpop)) * 5;
		return String.format("%.2f",score);
	}
	public String getAlPopScore(Float pop){
		Float score = ((pop - minalpop)/(maxalpop - minalpop)) * 10;
		
		return String.format("%.2f",score);
	}
}
