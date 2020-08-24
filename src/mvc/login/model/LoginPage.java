
package mvc.login.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import mvc.login.dao.LoginDao;
import mvc.login.vo.LoginDTO;
import mvc.login.vo.UserVO;

@Controller
public class LoginPage {
	@Autowired
	private LoginDao logindao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "login/loginform";
	}

	@RequestMapping(value = "/loginPost")
	public ModelAndView loginPost(LoginDTO loginDTO, HttpSession httpsession,String tab) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int cnt = logindao.login(loginDTO);
		if(cnt == 0) {
			return mav;
		}else {
		UserVO vo = logindao.logininfo(loginDTO.getAid());
		//로그저장해야됨
		if(tab.equals("location")) {			
			logindao.loginsert(vo.getAnum());
		}
		mav.addObject("user", vo);
		
		httpsession.setAttribute("user", vo);
		mav.setViewName("redirect:index#footerMenu"); 
		return mav;
		}
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(LoginDTO loginDTO, HttpSession httpsession, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		Object object = httpsession.getAttribute("user");
		if (object != null) {
			UserVO vo = (UserVO) object;
			logindao.logout(vo.getAnum());
			httpsession.removeAttribute("login");
			httpsession.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}
		mav.setViewName("redirect:index");
		return mav; 
	}

}