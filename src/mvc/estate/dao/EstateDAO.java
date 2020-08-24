package mvc.estate.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.commercial.vo.CommercialProductVO;
import mvc.commercial.vo.PageVO;
import mvc.estate.vo.AddInfoVO;
import mvc.estate.vo.EstatePageVO;
import mvc.estate.vo.EstateSearchVO;
import mvc.estate.vo.EstateVO;
import mvc.estate.vo.ForSaleVO;
import mvc.estate.vo.ForSale_InfoVO;
import mvc.estate.vo.ForSale_Info_EstateVO;
import mvc.estate.vo.ForSale_Info_StoreVO;
import mvc.estate.vo.Forsale_ImgVO;
import mvc.signup.vo.SignUpVO;
import oracle.net.aso.s;

@Repository
public class EstateDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addProduct(ForSaleVO vo) {
		ss.insert("estate.addproduct", vo);
	}
	
	
	public void addImg(ForSaleVO vo) {
		ss.insert("estate.addImg",vo);
	}
	public void addProductSale(EstateVO vo) {
		ss.insert("estate.addproductsale", vo);
	}
	
	public void addproductinfo(ForSale_InfoVO vo) {
		ss.insert("estate.addproductinfo", vo);
	}
	
	public ForSaleVO getlist(int num) {
		return ss.selectOne("estate.getListNum", num);
	}	
	public void addForsaleinfoStore(ForSale_Info_StoreVO fisvo) {
		ss.insert("estate.addFinfoStore", fisvo);
	}
	public void addForsaleinfoEstate(ForSale_Info_EstateVO fievo) {
		ss.insert("estate.addFinfoEstate", fievo);
	}
	public int listCount2(EstateSearchVO esvo) {
		return ss.selectOne("estate.fsale_count",esvo);
	}
	public List<ForSaleVO> fsalelist(EstatePageVO pvo){
		return ss.selectList("estate.fsale_list",pvo);
	}
	public ForSaleVO estateDetail_main(ForSaleVO fvo) {
		return ss.selectOne("estate.fsale_detail_main",fvo);
	}
	public SignUpVO estateDetail_signup(int num) {
		return ss.selectOne("estate.fsale_detail_signup",num);
	}
	public ForSale_Info_StoreVO getFis(int num) {
		return ss.selectOne("estate.fsale_info_store", num);
	}
	public ForSale_Info_EstateVO getFie(int num) {
		return ss.selectOne("estate.fsale_info_estate", num);
	}
	public List<Forsale_ImgVO> getimg(int num){
		return ss.selectList("estate.fsale_info_img",num);
	}
	public int listCount() {
		return ss.selectOne("estate.pcount");
	}
	public ForSaleVO estateDetail(int num) {
		return ss.selectOne("estate.Detail",num);
	}
	public String fileid(int num) {
		return ss.selectOne("estate.fileid",num);
	}
	
	public List<CommercialProductVO> commentList(PageVO vo){
		return ss.selectList("search.commentlist", vo);
	}
	
	public List<Integer> eList(EstatePageVO pvo){
		return ss.selectList("estate.emlist",pvo);
	}
	
	public EstateVO emlist(int num) {
		return ss.selectOne("estate.estateMlist",num);
	}
	
	
	public void anumUpdate(ForSaleVO fvo) {
		ss.update("update.anum_update", fvo);
	}
	
	public List<ForSaleVO> anumSelect(){
		return ss.selectList("update.anum_select");
	}
	
	public List<ForSaleVO> fnumSelect(){
		return ss.selectList("update.fnum_select");
	}


	public Forsale_ImgVO setimg(int fnum) {
		
		return ss.selectOne("estate.list_img", fnum);
	}
	
	
	
	public List<ForSaleVO> fnumList(){
		return ss.selectList("estate.fnumList");
	}
	
	public List<Forsale_ImgVO> fimgList(){
		return ss.selectList("estate.finumList");
	}
	
	public void fimgUpdate(ForSaleVO fvo) {
		ss.update("estate.fimgUpdate",fvo);
	}
}
