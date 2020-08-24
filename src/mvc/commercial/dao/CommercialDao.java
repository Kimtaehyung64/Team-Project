package mvc.commercial.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.commercial.vo.ChartVO;
import mvc.commercial.vo.DataVO;
import mvc.commercial.vo.KeywordVO;
import mvc.commercial.vo.OuterDataVO;
import mvc.commercial.vo.PopVO;
import mvc.comunity.vo.Community_PageVO;
@Repository
public class CommercialDao {
	@Autowired
	private SqlSessionTemplate ss;

	public List<String> getGu() {
	
		List<String> list = ss.selectList("data.gu");
	
		return list;
	} 

	public List<String> getLarge(DataVO vo) {
		List<String> list = ss.selectList("data.large", vo);
		return list;
	}

	public List<String> getMedium(DataVO vo) {
		List<String> list = ss.selectList("data.medium", vo);
		return list;
	}

	public List<DataVO> getMark(DataVO vo) {
		List<DataVO> list = ss.selectList("data.map", vo);
		
	
		return list;
	}
	public List<DataVO> getInformation(String guname) {
		List<DataVO> list = ss.selectList("data.information", guname);
		

		return list;
	}
	public List<DataVO> getInformation2(DataVO vo) {
		List<DataVO> list = ss.selectList("data.information2", vo);
		
	
		return list;
	}
	public List<String> getDong(String guName){
		List<String> list = ss.selectList("data.dong", guName);
		return list;
	}
	public List<ChartVO> getTimePopChart(String guName){
		List<ChartVO> list = ss.selectList("data.timePopChart", guName);
		return list;
	}
	public List<ChartVO> getTimePopChartByGender(String guName){
		List<ChartVO> list = ss.selectList("data.timePopChartByGender", guName);
		return list;
	}
	public OuterDataVO getOpenBusiData(OuterDataVO vo){
		OuterDataVO result = ss.selectOne("data.openBusi",vo); 
		return result;
	}
	public OuterDataVO getCloseBusiData(String guname){
		OuterDataVO vo = ss.selectOne("data.closeBusi", guname);
		return vo;
	}
	public List<OuterDataVO> getCloseChartData(String guname) {
		List<OuterDataVO> list = ss.selectList("data.closeChart", guname);
		return list;
	}
	public List<OuterDataVO> getAllNews(Community_PageVO pvo){
		List<OuterDataVO> list = ss.selectList("search.listall", pvo);
		return list;
	}
	public List<KeywordVO> getKeyword(){
		List<KeywordVO> list = ss.selectList("search.keyword");
		return list;
	}
	public int getTotalCount(Community_PageVO pvo) {
		return ss.selectOne("search.countall", pvo); 
	}
	public DataVO getCateLocation(String cate) {
		return ss.selectOne("search.catelocation", cate);
	}
	public DataVO getShopData(DataVO vo) {
		return ss.selectOne("data.shopN", vo);
	}
	public DataVO getPopData(DataVO vo) {
		return ss.selectOne("data.pop", vo);
	}
	public PopVO getStatisticPop() {
		return ss.selectOne("data.popinfo");
	}
	public List<String> getRealDongList(String largeName){
		return ss.selectList("search.dongList",largeName);
	}
}
