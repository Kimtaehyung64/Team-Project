package mvc.payment.model;





import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.mypage.vo.Member_DetailVO;
import mvc.payment.dao.PaymentDao;
import mvc.payment.service.PaymentService;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;


@Controller
public class PaymentPage {
	
	@Autowired
	public PaymentDao paymentdao;
	
	@Autowired
	private PaymentService paymentService;
	
	
	
	@RequestMapping(value="/payment")
	public ModelAndView payment(PaymentVO vo , int anum) {
		ModelAndView mav = new ModelAndView();	
		mav.addObject("vo", vo);
		mav.addObject("pvo", paymentdao.paymentname(anum));
		mav.setViewName("payment/payment");
		return mav;
	}

	@RequestMapping(value="/paymentextensionDetail")
	public String paymentextensionDetail() {
		return "payment/paymentextensionDetail";
	}
	
	@RequestMapping(value = "/paymentView")
	public String paymentView() {
		return "payment/payment";
	}
	/*
	 * //결제 완료창
	 * 
	 * @RequestMapping(value = "/pay3") public String pay3() { return "index"; }
	 */
	
	//인증번호에서 뒤로가기
	@RequestMapping(value = "/payback")
	public String payback() {
		return "payment/paymentDetail";
	}

	@RequestMapping(value = "/paymentUpdate", method=RequestMethod.POST)
	public ModelAndView paymentUpdate(PaymentVO vo, Payment_DetailVO vo1) {
		ModelAndView mav = new ModelAndView();
		paymentService.addPayment(vo,vo1);
		
		mav.setViewName("redirect:index");
		return mav;
	}
	
	
	@RequestMapping(value = "/paymentDetail", method = RequestMethod.POST)
	public ModelAndView paymentDetail(PaymentVO vo) {
		ModelAndView mav = new ModelAndView();
		// paymentService.addPayment(vo, vo1);
		
		mav.setViewName("payment/paymentDetail");
		mav.addObject("vo", vo);	
		mav.addObject("name", paymentdao.paymentname(vo.getAnum()));	
		return mav;
	}

}
