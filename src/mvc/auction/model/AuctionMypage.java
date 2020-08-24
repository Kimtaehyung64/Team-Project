package mvc.auction.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.auction.dao.AuctionMypageDao;
import mvc.auction.vo.AuctionmypageipVO;

@Controller
public class AuctionMypage {
	
	@Autowired
	private AuctionMypageDao auctionmypagedao;
	
	@RequestMapping(value="/auction_myinfo",method =RequestMethod.POST)
	public String siuctionmypageview(Model model,String aid) {
		
		model.addAttribute("iplist",auctionmypagedao.selectipinfo(aid));
		return("auction/auctionmypage");
	}
	
	@RequestMapping(value="/auction_iplist",method =RequestMethod.GET)
	public String siuctionmypageview(Model model,int ipnum,String aid) {
		AuctionmypageipVO vo = new AuctionmypageipVO();
		vo.setBidt(aid);
		vo.setIpnum(ipnum);
		model.addAttribute("ipll",auctionmypagedao.selectiplist(vo));
		return("auction/auctionmyiplist");
	}
}
