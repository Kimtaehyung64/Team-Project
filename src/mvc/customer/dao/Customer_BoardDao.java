package mvc.customer.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.comunity.vo.Community_BoardVO;
import mvc.comunity.vo.Community_PageVO;
import mvc.customer.vo.Customer_BoardVO;
import mvc.customer.vo.Customer_PageVO;

@Repository
public class Customer_BoardDao implements Customer_BoardInter{
	
	@Autowired
	private SqlSessionTemplate ss; 
	
	@Override
	public Object addwrite(Customer_BoardVO vo) throws Exception {
		return ss.insert("cboard.insert", vo);
	}

	@Override
	public List<Customer_BoardVO> getlist() throws Exception {
		
		return ss.selectList("cboard.list"); 
	}

	@Override
	public Customer_BoardVO getDetail(int c_num) throws Exception {
		
		return ss.selectOne("cboard.viewDetail",c_num);
	}
	
	public Customer_BoardVO getReply(int c_num) throws Exception{
		return ss.selectOne("cboard.replyDetail", c_num);
		
		
	}

//	@Override
//	public void updateAns(Customer_BoardVO vo) throws Exception {
//		
//		ss.update("cboard.ans",vo);
//		
//	}

	@Override
	public int delete(int c_num) throws Exception {
		
		return ss.delete("cboard.delete",c_num); 
	}

	@Override
	public List<Customer_BoardVO> listAll(Customer_PageVO pvo)throws Exception {
		return ss.selectList("cboard.listall",pvo);
	}

	@Override
	public int getCountAll(Customer_PageVO pvo) throws Exception {
		
		return ss.selectOne("cboard.countall",pvo);
	}
	@Override
	public void deleteDetail(int c_num) throws Exception{
		ss.update("cboard.deletedetail", c_num);
		
	}
	@Override
	public void updateDetail(Customer_BoardVO vo) throws Exception{			
		ss.update("cboard.updatedetail", vo);
	}

}
