package mvc.signup.model;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mvc.email.Email;
import mvc.login.dao.LoginDao;
import mvc.login.vo.LoginDTO;
import mvc.login.vo.UserVO;
import mvc.signup.dao.SignUpDao;
import mvc.signup.vo.SignUpVO;

@Controller
public class SignUpPage {
	
	@Autowired
	private SignUpDao signUpDao;
	
	@Autowired
	private LoginDao logindao;
	
	@RequestMapping(value = "/broker")
	public String signUpBroke() {
		return "community/signup_broker";
	}

	@RequestMapping(value = "/lessor")
	public String signLessor() {
		return "community/signup_lessor";
	}

	@RequestMapping(value = "/subBroke")
	public String subBroker() {
		return "community/subscriptioncheck_broker";
	}

	@RequestMapping(value = "/subLessor")
	public String subLessor() {
		return "community/subscriptioncheck_lessor";
	}
	
	@RequestMapping(value = "/signup_broker_in",method = RequestMethod.POST)
	public ModelAndView signUpBroker(SignUpVO vo, LoginDTO loginDTO, HttpSession httpsession) throws Exception {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("index");
		loginDTO.setAid(vo.getAid());
		loginDTO.setApwd(vo.getApwd());
		loginDTO.setAgubun(vo.getAgubun());
		UserVO vo2 = logindao.logininfo(loginDTO.getAid());
		String userid = vo.getAid();
		mav.addObject("userid", userid);
		mav.addObject("user", vo2);
		httpsession.setAttribute("user", vo2);
		return mav;
	}
	
	@RequestMapping(value = "/signup_lessor_in",method = RequestMethod.POST)
	public ModelAndView signUpLessor(SignUpVO vo, LoginDTO loginDTO, HttpSession httpsession) throws Exception {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("index");
		loginDTO.setAid(vo.getAid());
		loginDTO.setApwd(vo.getApwd());
		loginDTO.setAgubun(vo.getAgubun());
		UserVO vo2 = logindao.logininfo(loginDTO.getAid());
		String userid = vo.getAid();
		mav.addObject("userid", userid);
		mav.addObject("user", vo2);
		httpsession.setAttribute("user", vo2);
		return mav;
	}
	
	// 이메일 인증을 통한 아이디 회원가입 처리
	
	@Autowired
	private Email email;
	
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value="/emailCheck")
	@ResponseBody
	public String emailCheck(String aid) {
		// 랜덤한 4자리 숫자를 만듬
		Random random = new Random();
		String certifyNumber = "";
		for(int i=0; i<4; i++) {
			String sample = Integer.toString(random.nextInt(10));
			certifyNumber += sample;
		}
		// 숫자를 메일로 보냄
		email.setContent("인증번호는 "+certifyNumber+" 입니다.");
		email.setReceiver(aid);
		email.setSubject("CMJ 가입을 위한 이메일 인증 메일입니다.");
		try {
			MimeMessage msg = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
			messageHelper.setSubject(email.getSubject());
			messageHelper.setText(email.getContent());
			messageHelper.setTo(email.getReceiver());
			messageHelper.setFrom("coaudwjd@gmail.com");
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
			mailSender.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return certifyNumber;
	}
}
