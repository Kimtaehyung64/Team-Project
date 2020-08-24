package mvc.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		HttpSession session = request.getSession();
		if (session.getAttribute(LOGIN) != null) {
			session.removeAttribute(LOGIN);
		}
		return true;

	}
 
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object vo = modelMap.get("user");
		if(vo !=null) {
			session.setAttribute(LOGIN, vo);
			response.sendRedirect("/");
		}
	}

}
