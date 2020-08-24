package mvc.login.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.signup.vo.SignUpVO;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	public MemberDao() {}
	
	public String getPw(Map<String, String> paramMap) {
		return (String) ss.selectOne("signup.findpw", paramMap);
	}
	
	

	
//	public void newPassword(SignUpVO vo) throws Exception{
//		String password = vo.getApwd();
//		vo.setApwd(password);
//		ss.update("newPassword",vo);
//	}
}
