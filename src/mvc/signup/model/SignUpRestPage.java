package mvc.signup.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import mvc.signup.dao.SignUpDao;
import mvc.signup.vo.SignUpVO;

@RestController
public class SignUpRestPage {

	@Autowired
	private SignUpDao signUpDao;
	
	@RequestMapping(value = "/idChk")
	@ResponseBody
	public int idChk(String aid) {
		int cnt = signUpDao.aidCheck(aid);
		return cnt;
	}
	
	@RequestMapping(value = "/nameChk")
	@ResponseBody
	public int dnameChk(SignUpVO vo) {
		int cnt = signUpDao.dnameCheck(vo);
		return cnt;
	}
	
	@RequestMapping(value ="/analysisCheck")
	@ResponseBody
	public int analysisCheck(String aid) {
		System.out.println(aid);
		SignUpVO si=new SignUpVO();
		si.setAid(aid);
		String  check=signUpDao.gudokCheck(si);
		int num=0;
		if(check.equals("구독")) {
			num=1;
		}
		return num;
	}
	
}
