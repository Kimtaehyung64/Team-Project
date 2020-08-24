package mvc.estate.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.estate.dao.EstateDAO;
import mvc.estate.vo.AddInfoVO;
import mvc.estate.vo.EstatePageVO;
import mvc.estate.vo.EstateSearchVO;
import mvc.estate.vo.EstateVO;
import mvc.estate.vo.ForSaleVO;
import mvc.estate.vo.ForSale_InfoVO;



@Service
@Transactional
public class EstateService {
		
	@Autowired
	private EstateDAO estateDAO;
	
	public void addEstate(ForSaleVO fvo,ForSale_InfoVO fivo) {
	//product 생성
		
		estateDAO.addProduct(fvo);
		estateDAO.addImg(fvo);
		estateDAO.addproductinfo(fivo);			
		if(fvo.getFkind().equals("상가/사무실")) {
			
		
			estateDAO.addForsaleinfoStore(fivo.getFisvo());
		}else {
			estateDAO.addForsaleinfoEstate(fivo.getFievo());
		}
		
		
	}
	
	
	public List<EstateVO> estatelist(EstatePageVO vo){
		if(vo.getEsvo()!=null) {
			EstateSearchVO esvo=vo.getEsvo();
			String roomAreaTo=esvo.getRoomArea_to();
			if(!esvo.getRoomArea_to().equals("무제한")) {
				roomAreaTo=esvo.getRoomArea_to().substring(esvo.getRoomArea_to().indexOf("("), esvo.getRoomArea_to().indexOf(")"));
			}
			String roomAreaFrom=esvo.getRoomArea_from().substring(esvo.getRoomArea_from().indexOf("("), esvo.getRoomArea_from().indexOf(")"));
			roomAreaFrom.replace("(", "");
			roomAreaFrom.replace(")", "");
			esvo.setRoomArea_from(roomAreaFrom);
			esvo.setRoomArea_to(roomAreaTo);
			vo.setEsvo(esvo);
		}
		List<Integer> list=estateDAO.eList(vo);
		List<EstateVO> elist = new ArrayList<EstateVO>();
		
		for(Integer e:list) {
		
			elist.add(estateDAO.emlist(e));
		}
		return elist;
		
	}
	
}
