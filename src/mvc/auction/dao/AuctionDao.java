package mvc.auction.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.auction.vo.AuctionAddDeVO;
import mvc.auction.vo.AuctionAddIpVO;
import mvc.auction.vo.AuctionAddMainVO;
import mvc.auction.vo.AuctionPageVO;
import mvc.auction.vo.AuctionViewVO;
import mvc.auction.vo.FcmidVO;
import mvc.auction.vo.IpchalperVO;
import mvc.login.vo.LogintokenVO;

@Repository
public class AuctionDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addAuctionmain(AuctionAddMainVO vo) {
		ss.insert("auction.addmian",vo);
	}
	
	public void addAuctionde(AuctionAddDeVO vo) {
		ss.insert("auction.addde",vo);
	}
	
	public void addAuctionIp(AuctionAddIpVO vo) {
		ss.insert("auction.addip",vo);
	}
	
	public int getTotalCnt(AuctionPageVO vo) {
		return ss.selectOne("auction.totalcount",vo);
	}
	
	public List<AuctionViewVO> getAuctionview(AuctionPageVO vo){
		//System.out.println("dao:"+vo.getSearchType()+":"+vo.getSearchValue());
		return ss.selectList("auction.mainsel",vo);
	}
	
	public List<AuctionViewVO> getAuctionbanner(){
		return ss.selectList("auction.banner");
	}
	
	public void updatestatus() {
		ss.update("auction.upstaus");
	}
	
	public void instokendao(LogintokenVO vo) {
		ss.update("auction.tokenins",vo);
	}
	
	public String getipid(int ipnum) {
		return ss.selectOne("auction.selaid",ipnum);
	}
	
	public List<FcmidVO> getfcmidlist(FcmidVO vo){
		return ss.selectList("auction.fcmid",vo);
	}
	
}
