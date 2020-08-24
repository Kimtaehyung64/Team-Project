package mvc.auction.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.auction.model.AuctionPage;
import mvc.auction.vo.AuctionDetailVO;
import mvc.auction.vo.AuctionPageVO;
import mvc.auction.vo.AuctionSaleVO;
import mvc.auction.vo.AuctionViewVO;
import mvc.auction.vo.IpchalperVO;

@Repository
public class AuctionHyuntaeDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public AuctionDetailVO getAuctionDetail(int anum) {
		return ss.selectOne("auctionDetail.detail", anum);
	}
	public void purchase(IpchalperVO vo) {
		ss.insert("auctionDetail.bidding", vo);
	}
	public List<AuctionSaleVO> getAuctionsale(String aid){
		return ss.selectList("auctionsale.sales",aid);
	}
	public void getDetailIpchal(IpchalperVO vo){
		 ss.insert("auctionDetail.bidding", vo);
	}
	public void auctionHit(int anum) {
		ss.update("auction.hithit", anum);
		
	}
	public List<AuctionSaleVO> getchartdata(int anum){
		return ss.selectList("auctionsale.chart", anum);
	}
	public List<IpchalperVO> getList(){
		return ss.selectList("auctionsale.managementList");
	}
	public int getTotalCnt(AuctionPageVO vo) {
		return ss.selectOne("auctionsale.totalcount",vo);
	}
	public List<AuctionSaleVO> getAuctionview(AuctionPageVO vo){
		//System.out.println("dao:"+vo.getSearchType()+":"+vo.getSearchValue());
		return ss.selectList("auctionsale.mainsel",vo);
	}
	
	public List<AuctionSaleVO> getAuctionbanner(){
		return ss.selectList("auctionsale.banner");
	}
	
	
	
	

}
