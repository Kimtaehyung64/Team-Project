package mvc.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.payment.dao.PaymentDao;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;

@Service
@Transactional
public class PaymentService {

	@Autowired
	private PaymentDao paymentdao;

	public void addPayment(PaymentVO vo, Payment_DetailVO vo1) {
		paymentdao.Payment(vo);
		paymentdao.PaymentPage(vo1);

	}
	
} 