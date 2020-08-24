package mvc.customer.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.login.dao.MemberDao;
import mvc.signup.vo.SignUpVO;


@Service("memberService")
public class MemberServiceImple implements MemberService{
	
	@Autowired
	MemberDao memberDao;
	
	

	@Override
	public String getPw(Map<String, String> paramMap) throws Exception {
		return memberDao.getPw(paramMap);
	}

//	@Override
//	public void newPassword(SignUpVO vo) throws Exception {
//		memberDao.newPassword(vo);
//		
//	}

}
