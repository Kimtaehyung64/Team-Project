package mvc.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.auction.dao.AuctionDao;
import mvc.auction.vo.AuctionAddDeVO;
import mvc.auction.vo.AuctionAddIpVO;
import mvc.auction.vo.AuctionAddMainVO;

@Service
@Transactional
public class AuctionService {
	
	@Autowired
	private AuctionDao auctiondao;
	
	public void addAuction(AuctionAddMainVO vo,AuctionAddDeVO avo,AuctionAddIpVO bvo) {
		auctiondao.addAuctionmain(vo);
		auctiondao.addAuctionde(avo);
		auctiondao.addAuctionIp(bvo);
	}
	
}
 