package mvc.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.signup.dao.SignUpDao;
import mvc.signup.vo.SignUpVO;

@Service
@Transactional
public class SignUpService {
	
	@Autowired
	private SignUpDao signUpDao;
	
	public void addSignUp(SignUpVO vo) {
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
	}
}
 