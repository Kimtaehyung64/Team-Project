package mvc.commercial.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.commercial.dao.CommercialProductDao;
import mvc.commercial.vo.CommercialProductVO;




@Service
@Transactional
public class CommercialService {
	
	@Autowired
	private CommercialProductDao commercialProductDao;
	
	public void deleteCommercial(String pdnum) {
		commercialProductDao.deleteOption(pdnum);
		commercialProductDao.deleteAdmin(pdnum);
		commercialProductDao.deleteCommercialpi(pdnum);
		commercialProductDao.deleteCommercialpl(pdnum);
		commercialProductDao.deleteCommercialps(pdnum);
		commercialProductDao.deleteCommercialpd(pdnum);
	}
	
	public void updateCommercial(CommercialProductVO vo,String[] option) {
		commercialProductDao.updateCommercial(vo);
		commercialProductDao.updateCommercial2(vo);
		if(option!=null) {
			for(String e:option) {
				vo.setOption(e);
				commercialProductDao.updateCommercial3(vo);
			}
				
		}
	
	}
}
