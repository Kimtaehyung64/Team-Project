package mvc.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.commercial.vo.CommercialProductVO;
import mvc.comunity.vo.Community_BoardVO;
import mvc.customer.vo.Customer_BoardVO;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;
import mvc.signup.vo.SignUpVO;

@Repository
public class MyPageDao {
	@Autowired
	private SqlSessionTemplate ss;

	public SignUpVO getloginINFOR(String aid) {

		SignUpVO vo = ss.selectOne("mypage.lessor_infor", aid);
		return vo;
	}
	
	public SignUpVO getloginINFORNUM(int anum) {

		SignUpVO vo = ss.selectOne("mypage.lessor_infornum",anum);
		return vo;
	}

	public SignUpVO getPayDetail(String aid) {
		SignUpVO vo = ss.selectOne("mypage.lessor_paydetail", aid);
		return vo;
	}

	public SignUpVO payTest(String aid, int anum) {
		SignUpVO vo = null;

		vo = ss.selectOne("mypage.lessor_infor", aid);

		vo.setPayvo(ss.selectOne("mypage.paymentDetail", anum));

		return vo;
	}

	public PaymentVO premiumProlong(int anum) {
		PaymentVO vo = ss.selectOne("mypage.paymentDetail", anum);
		return vo;
	}

	public void Payment(PaymentVO vo) {
		ss.update("mypage.paymentup", vo);
	}

	public void PaymentPage(Payment_DetailVO vo1) {
		ss.update("mypage.payment_detailup", vo1);
	}

	public void memberUPDATE(SignUpVO vo) {

		int update = ss.update("mypage.infor_memberupdate", vo);

	}

	public void loginUPDATE(SignUpVO vo) {

		int update = ss.update("mypage.infor_loginupdate", vo);

	}

	public List<Community_BoardVO> inforPosts(int anum) {

		List<Community_BoardVO> list = ss.selectList("mypage.infor_postslist", anum);

		return list;
	}

	public List<CommercialProductVO> productINFOR(int anum) {

		List<CommercialProductVO> list = ss.selectList("mypage.mypage_product_infor", anum);

		return list;
	}
	
	public void member_secession(SignUpVO aid) {
		int res = ss.update("mypage.member_secession" ,aid);
		
	}
	
	public List<Customer_BoardVO> customer_select(int anum){
		List<Customer_BoardVO> list = ss.selectList("mypage.mypage_customer", anum);
		
		return list;
	}

}
