
package mvc.comunity.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.comunity.vo.Community_BoardVO;
import mvc.comunity.vo.Community_PageVO;
import mvc.comunity.vo.Community_ReplyVO;
import mvc.comunity.vo.Community_Reply_PageVO;

@Repository
public class CommunityDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 서울시 XX구를 받아오는 DAO
	public List<String> getGu() {
		List<String> list = ss.selectList("commudata.commugu");
		return list;
	}
	
	// XX구의 YY동을 받아오는 DAO
	public List<String> getDong(String guName) {
		List<String> list = ss.selectList("commudata.dong", guName);
		return list;
	}
	
	// 글 작성을 하는 DAO
	public void Writing(Community_BoardVO vo) {
		ss.insert("commuwriting.writing", vo);
	}

	
	// 작성한 글을 보여주는데 사용되는 DAO
	public Community_BoardVO WriDetail(int wnum){
		return ss.selectOne("commuwriting.wridetail", wnum);
	}
	
	// 전체 글의 정보를 커뮤니티 메인에 띄우는데 사용되는 DAO
	public List<Community_BoardVO> allList(Community_PageVO pvo){
		return ss.selectList("commuwriting.listall",pvo);
	}
	
	// 전체 글의 개수를 계산하는데 사용되는 DAO
	public int getCountAll(Community_PageVO pvo) {
		return ss.selectOne("commuwriting.countall",pvo);
	}
	
	// 특정 글의 조회수를 계산하는데 사용되는 DAO
	public void updateWhit(int wnum) {
		ss.update("commuwriting.updatewhit", wnum);
	}
	
	// 특정 글의 현재 추천 수를 계산하는데 사용되는 DAO
	public Community_BoardVO getWrec(int wnum) {
		return ss.selectOne("commuwriting.getWrec", wnum);
	}
	
	// 특정 글의 추천 버튼 클릭에 따른 결과를 받는데 사용되는 DAO 
	public int updateWrec(int wnum) {
		return ss.update("commuwriting.updatewrec", wnum);
	}
	
	// 특정 글을 수정하는데 사용되는 DAO
	public void updateDetail(Community_BoardVO vo) {
		ss.update("commuwriting.updatedetail", vo);
	}
	
	// 특정 글을 삭제하는데 사용되는 DAO
	public void deleteDetail(int wnum) {
		ss.update("commuwriting.deletedetail", wnum);
	}
	
	// 댓글을 새로 작성하는데 사용되는 DAO
	public void insertReply(Community_ReplyVO vo) {
		ss.insert("commureply.insert", vo);
	}
	
	// 특정 글의 댓글 목록을 불러오는데 사용되는 DAO
	public List<Community_Reply_PageVO> replyList(Community_Reply_PageVO pvo){
		return ss.selectList("commureply.list", pvo);
	}
	
	// 특정 글의 댓글 개수를 불러오는데 사용되는 DAO
	public int countReply(int wnum) {
		return ss.selectOne("commureply.count", wnum);
	}
	
	// 특정 댓글을 수정하는 작업을 수행하는 DAO
	public void updateReply(Community_ReplyVO vo) {
		ss.update("commureply.update", vo);
	}
	
	// 특정 댓글을 삭제하는 작업을 수행하는 DAO
	public void deleteReply(Community_ReplyVO vo) {
		ss.delete("commureply.delete",vo);
	}
}
