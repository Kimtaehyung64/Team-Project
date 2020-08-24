package mvc.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.mypage.dao.MyPageDao;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;
import mvc.signup.vo.SignUpVO;

@Service
@Transactional
public class MypageService {
	
	@Autowired
	private MyPageDao mypagedao;

	public void service_premiumProlong (PaymentVO vo, Payment_DetailVO vo1) {
		
		mypagedao.Payment(vo);
		mypagedao.PaymentPage(vo1);
		
	}
	
	public void member_secession(SignUpVO aid) {
		mypagedao.member_secession(aid);
	}
	
}
