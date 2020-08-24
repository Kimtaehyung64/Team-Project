package mvc.commercial.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.commercial.vo.CommercialProductVO;
import mvc.commercial.vo.DataVO;
import mvc.commercial.vo.PageVO;
import mvc.commercial.vo.RealPriceVO;
@Repository
public class CommercialProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	public List<CommercialProductVO> getDesc(String location){
		
		List<CommercialProductVO> list = ss.selectList("commercialProduct.desc", location);
		return list;
	}
	public List<CommercialProductVO> getProductDetail(String pdnum){
		

		return ss.selectList("commercialProduct.descdetail", pdnum);
	} 
	public CommercialProductVO getCntProduct(String pdnum) {
		
		CommercialProductVO vo = ss.selectOne("commercialProduct.descdetail", pdnum);
		return vo;
	}
	 public List<CommercialProductVO> getList(PageVO svo){ //nowPage등으로 연산이 된  start,end
		 
		  return ss.selectList("search.list2", svo);
		} 
	 public List<RealPriceVO> getList2(PageVO svo){ //nowPage등으로 연산이 된  start,end
		 
		  return ss.selectList("search.list3", svo);
		} 
	 public int getTotalCount(PageVO svo) {//전체 데이터를 기준으로 페이지를 나눌것이기 때문에..
		  return ss.selectOne("search.totalCount", svo);
		 }
	 public int getTotalCount2(PageVO svo) {//전체 데이터를 기준으로 페이지를 나눌것이기 때문에..
		  return ss.selectOne("search.totalCount2", svo);
		 }
	 public void updateCommercial(CommercialProductVO vo) {
		 ss.update("commercialProduct.update1", vo);
	 }
	 public void updateCommercial2(CommercialProductVO vo) {
		 ss.update("commercialProduct.update2", vo);
	 }
	 public void updateCommercial3(CommercialProductVO vo) {
		 ss.update("commercialProduct.update3", vo);
	 }
	
	 public void deleteCommercialpd(String pdnum) {
		 ss.delete("commercialProduct.delete1", pdnum);
	 }
	 public void deleteCommercialpl(String pdnum) {
		 ss.delete("commercialProduct.delete2", pdnum);
	 }
	 public void deleteCommercialps(String pdnum) {
		 ss.delete("commercialProduct.delete3", pdnum);
	 }
	 public void deleteCommercialpi(String pdnum) {
		 ss.delete("commercialProduct.delete4", pdnum);
	 }
	 
	 public void deleteOption(String pdnum) {
		 ss.delete("commercialProduct.delete5", pdnum);
	 }
	 public void deleteAdmin(String pdnum) {
		 ss.delete("commercialProduct.delete6", pdnum);
	 }
}

