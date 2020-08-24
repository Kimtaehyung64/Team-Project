package mvc.auction.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import mvc.auction.dao.AuctionMypageDao;
import mvc.auction.vo.AuctionMyJsonVO;

@RestController
public class AuctionMyJson {
	
	@Autowired
	private AuctionMypageDao auctionmypagedao;
	
	@ResponseBody
	@RequestMapping(value = "/auctionjson",method =RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public String getjlist(int num){
		
		List<AuctionMyJsonVO> list = auctionmypagedao.getAuctionJson(num);
		List<Object> list2 = new ArrayList<Object>();
		list2.add("입찰가");
		
		for(AuctionMyJsonVO e : list) {
			list2.add(e.getIpprice());
		}
		
		
		String result = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			result = mapper.writeValueAsString(list2);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/auctionjson",method =RequestMethod.GET,produces = "application/json; charset=euc-kr")
//	public List<AuctionMyJsonVO> getjlist(int num){
//		List<AuctionMyJsonVO> list = auctionmypagedao.getAuctionJson(num);
//		return list;
//	}
	
	
}
