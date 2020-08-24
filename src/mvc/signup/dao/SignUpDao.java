package mvc.signup.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.signup.vo.SignUpVO;

@Repository
public class SignUpDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addSignUp1(SignUpVO vo) {
		ss.insert("signup.addmember1", vo);
	}
	
	public void addSignUp2(SignUpVO vo) {
		String dbirth = vo.getDyear()+"-"+vo.getDmonth()+"-"+vo.getDday();
		vo.setDbirth(dbirth);
		String dtel = vo.getDtelheader()+"-"+vo.getDtelmiddle()+"-"+vo.getDtelfooter();
		vo.setDtel(dtel);
		ss.insert("signup.addmember2", vo);
		ss.insert("signup.addmember3");
		ss.insert("signup.addmember4");
	}
	
	public int aidCheck(String aid) {
		return ss.selectOne("signup.idChk", aid);
	}

	public int dnameCheck(SignUpVO vo) {
		return  ss.selectOne("signup.dnameChk", vo);
	}
	
	public String gudokCheck(SignUpVO vo) {
		return ss.selectOne("signup.gudokCheck",vo);
	}
}