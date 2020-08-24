package mvc.payment.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.mypage.vo.Member_DetailVO;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;

@Repository
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
	public void Payment(PaymentVO vo) {
		ss.update("payment.paymentup", vo);
	}
	public void PaymentPage(Payment_DetailVO vo1) {
		ss.update("payment.payment_detailup", vo1);
	    }
	public String paymentname(int anum) {
		
		return ss.selectOne("payment.paymentid", anum);
		
	}
	public Member_DetailVO getdname(String dname){
		Member_DetailVO vo1 = ss.selectOne("payment.paymentget", dname);
		return vo1;
	}
}
  