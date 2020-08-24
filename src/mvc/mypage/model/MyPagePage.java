package mvc.mypage.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.commercial.vo.CommercialProductVO;
import mvc.comunity.vo.Community_BoardVO;
import mvc.customer.vo.Customer_BoardVO;
import mvc.mypage.dao.MyPageDao;
import mvc.mypage.service.MypageService;
import mvc.payment.vo.PaymentVO;
import mvc.payment.vo.Payment_DetailVO;
import mvc.signup.vo.SignUpVO;

@Controller
public class MyPagePage {

	@Autowired
	private MyPageDao mypagedao;

	@Autowired
	private MypageService myservice;

	
	@RequestMapping(value = "/mypage_lessor")
	public ModelAndView myPagelessor(String aid) {
		ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
		SignUpVO vo = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo);
		return mav;
	}

	@RequestMapping(value = "/inforDetail", method = RequestMethod.POST)
	public ModelAndView myinforDetaillessor(String aid) {
		ModelAndView mav = new ModelAndView("mypage/inforDetail");
		SignUpVO vo = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo);
		return mav;
	}

	
	@RequestMapping(value = "/Pay_Detail")
	public ModelAndView inforPayDetail(String aid, int anum) {
		ModelAndView mav = new ModelAndView("mypage/paymentDetail");
		SignUpVO vo = mypagedao.payTest(aid, anum);
		mav.addObject("vo", vo);
		return mav;
	}

	
	@RequestMapping(value = "/loginDetail", method = RequestMethod.POST)
	public ModelAndView loginDetail(String aid) {
		ModelAndView mav = new ModelAndView("mypage/loginDetail");
		SignUpVO vo = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo);
		return mav;
	}

	@RequestMapping(value = "/inforDetailUpdate", method = RequestMethod.POST)
	public ModelAndView memberUPDATE(SignUpVO vo, String aid) {
		ModelAndView mav = new ModelAndView();
		mypagedao.memberUPDATE(vo);
		SignUpVO vo2 = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo2);
		mav.setViewName("mypage/mypage_lessor");
		return mav;
	}

	@RequestMapping(value = "/mypageloginUpdate", method = RequestMethod.POST)
	public ModelAndView loginUPDATE(SignUpVO vo, String aid) {
		ModelAndView mav = new ModelAndView();
		mypagedao.loginUPDATE(vo);
		SignUpVO vo2 = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo2);
		mav.setViewName("mypage/mypage_lessor");
		return mav;
	}

	@RequestMapping(value = "infor_posts", method = RequestMethod.POST)
	public ModelAndView myPosts(int anum) {
		ModelAndView mav = new ModelAndView("mypage/infor_posts");
		List<Community_BoardVO> list = mypagedao.inforPosts(anum);
		mav.addObject("list", list);
		return mav;
	}


	@RequestMapping(value = "/infor_product")
	public ModelAndView myproduct(int anum) {
		ModelAndView mav = new ModelAndView("mypage/include/infor_management");
		int cnt;
		List<CommercialProductVO> plist = mypagedao.productINFOR(anum);
		mav.addObject("plist", plist);
		return mav;

	}

	
	@RequestMapping(value = "/mypage_broker")
	public ModelAndView myPageBroker(String aid) {
		ModelAndView mav = new ModelAndView("mypage/mypage_broker");
		SignUpVO vo = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo);
		return mav;
	}

	@RequestMapping(value = "/premiumProlong")
	public ModelAndView premiumProlong(int anum) {
		ModelAndView mav = new ModelAndView("payment/paymentextension");
		PaymentVO vo = mypagedao.premiumProlong(anum);
		mav.addObject("vo", vo);
		return mav;
	}


	@RequestMapping(value = "/premiumProlongpay", method = RequestMethod.POST)
	public ModelAndView premiumProlongpay(PaymentVO beforevo, int anum) {
		ModelAndView mav = new ModelAndView("payment/paymentextensionDetail");
		PaymentVO vo = mypagedao.premiumProlong(anum);
		SignUpVO vo3 = mypagedao.getloginINFORNUM(anum);
		mav.addObject("bvo", beforevo);
		mav.addObject("vo", vo);
		mav.addObject("sign", vo3);

		return mav;
	}

	@RequestMapping(value = "/myProlongup")
	public ModelAndView paymentupdate_my(PaymentVO vo, Payment_DetailVO dvo) {

		myservice.service_premiumProlong(vo, dvo);
		
		SignUpVO svo = mypagedao.getloginINFORNUM(vo.getPnum());
		ModelAndView mav = new ModelAndView("index");
	
		mav.addObject("vo" , svo);
		return mav;
	}

	// 멤버 탈퇴 처리 (DB에 구분에 1로 변경)
	@RequestMapping(value = "member_secession", method = RequestMethod.POST)
	public ModelAndView secessionMember(String aid) {
		ModelAndView mav = new ModelAndView("mypage/secession_member");
		SignUpVO vo = mypagedao.getloginINFOR(aid);
		mav.addObject("vo", vo);
		return mav;

	}

	// logout
	@RequestMapping(value = "deletemember", method = RequestMethod.POST)
	public ModelAndView deletemember(SignUpVO aid) {
		ModelAndView mav = new ModelAndView("logout");
		myservice.member_secession(aid);
		return mav;
	}

	// 고객 센터 의 내가쓴 문의게시글 리스트 출력
	@RequestMapping(value = "infor_customer", method = RequestMethod.POST)
	public ModelAndView viewCustomer(int anum) {
		ModelAndView mav = new ModelAndView("mypage/customer_Inquiry");
		List<Customer_BoardVO> list = mypagedao.customer_select(anum);
		mav.addObject("list", list);
		return mav;
	}

}
