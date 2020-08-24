package mvc.customer.dao;

import java.util.List;

import mvc.comunity.vo.Community_PageVO;
import mvc.customer.vo.Customer_BoardVO;
import mvc.customer.vo.Customer_PageVO;

public interface Customer_BoardInter {
	
	public Object addwrite(Customer_BoardVO vo) throws Exception;
	
	public List<Customer_BoardVO> getlist() throws Exception;     
	
	public Customer_BoardVO getDetail(int c_num) throws Exception;
	
	 
	
	public int delete(int c_num) throws Exception;
	
	public List<Customer_BoardVO> listAll(Customer_PageVO pvo) throws Exception;

	public int getCountAll(Customer_PageVO pvo) throws Exception;
	
	public void deleteDetail(int c_num) throws Exception;
	
	public void updateDetail(Customer_BoardVO vo) throws Exception;
}
