package mvc.auction.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.auction.vo.AuctionMyJsonVO;
import mvc.auction.vo.AuctionMyipViewVO;
import mvc.auction.vo.AuctionmypageipVO;

@Repository
public class AuctionMypageDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<AuctionMyipViewVO> selectipinfo(String aid) {
		return ss.selectList("auctionmyip.ipsel",aid);
	}
	public List<AuctionmypageipVO> selectiplist(AuctionmypageipVO vo){
		return ss.selectList("auctionmyip.iplist",vo);
	}
	public List<AuctionMyJsonVO> getAuctionJson(int num){
		return ss.selectList("auctionmyip.lchart",num);
	}
}
