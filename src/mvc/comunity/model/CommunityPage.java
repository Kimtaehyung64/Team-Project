package mvc.comunity.model;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.comunity.dao.CommunityDao;
import mvc.comunity.vo.Community_BoardVO;
import mvc.comunity.vo.Community_PageVO;
import mvc.comunity.vo.Community_ReplyVO;
import mvc.comunity.vo.Community_Reply_PageVO;

@Controller
public class CommunityPage {
	
	@Autowired
	private CommunityDao communityDao;
	
	@RequestMapping(value = "/wriCom")
	public String writeCommercial() {
		return "community/writing_commercial";
	}
	
	@RequestMapping(value = "/updateWrec")
	public String updateWrec(Model model, int wnum, HttpServletRequest request, HttpServletResponse response) {
		communityDao.updateWrec(wnum);
		Community_BoardVO list = communityDao.getWrec(wnum);
		model.addAttribute("list", list);
		return "redirect:writing_detail?wnum="+wnum;
	}
	
	@RequestMapping(value = "/comugu")
	public String getGu(Model model,Community_BoardVO vo, String cate) {
		List<String> list = communityDao.getGu();
		model.addAttribute("result",list);
		model.addAttribute("cate",cate);
		return "community/server/searchServer";
	}
	
	@RequestMapping(value = "/comudong")
	public String getDong(Model model, String guName) {
		List<String> list = communityDao.getDong(guName);
		model.addAttribute("result",list);
		return "community/server/searchServer";
	}
	
	@RequestMapping(value = "/comuMain")
	public String writingAllList(Community_PageVO pvo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(value = "sortindex", required = false, defaultValue = "1") String sortindex,
			@RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchValue) {
		int total = communityDao.getCountAll(pvo);
		pvo = new Community_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), Integer.parseInt(sortindex));
		pvo.setSearchType(searchType);
		pvo.setSearchValue(searchValue);
		model.addAttribute("paging", pvo);
		model.addAttribute("listall", communityDao.allList(pvo));
		model.addAttribute("total", total);
		return "community/community";
	}
	
	@RequestMapping(value = "/writing_commercial_in",method = RequestMethod.POST)
	public ModelAndView writingCommercial(Community_BoardVO vo) {
		ModelAndView mav = new ModelAndView("redirect:comuMain");
		communityDao.Writing(vo);
		return mav;
	}
	
	// 상세보기로 들어가는 컨트롤러
	@RequestMapping(value = "/writing_detail")
	public ModelAndView writeDetail(@RequestParam int wnum, HttpServletRequest request, HttpServletResponse response,
			Community_Reply_PageVO pvo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {
		
		// 댓글을 출력하는 코드 시작
		int total = communityDao.countReply(wnum);
		pvo = new Community_Reply_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), wnum);
		model.addAttribute("replyPage", pvo);
		model.addAttribute("replyList", communityDao.replyList(pvo));
		model.addAttribute("replytotal", total);
		// 댓글을 출력하는 코드 끝
		
		Community_BoardVO list = communityDao.WriDetail(wnum);
		ModelAndView mav = new ModelAndView();
		Cookie[] cookies = request.getCookies();
		
		// 비교를 위한 새로운 쿠키 생성
		Cookie viewCookie = null;
		
		// 쿠키가 있을 경우
		if (cookies != null && cookies.length > 0) {
			for(int i=0;i<cookies.length;i++) 
			{
				// Cookie의 name이 cookie + wnum과 일치하는 쿠키를 viewCookie에 넣어줌
				if (cookies[i].getName().equals("cookie"+wnum))
				{
					viewCookie = cookies[i];
				}
			}
		}
	
		if (list != null) {
			mav.addObject("list", list);
			// 만일 viewCookie가 null일 경우, 쿠키를 생성하여 조회수 증가 로직을 처리한다.
			if(viewCookie == null) {
				// 쿠키 생성(이름,값)
				Cookie newCookie = new Cookie("cookie"+wnum, "|"+wnum+"|");
				// 쿠키 추가
				response.addCookie(newCookie);
				// 쿠키를 추가한 후, 조회수를 증가시킴
				communityDao.updateWhit(wnum);
			}
			// viewCookie가 null이 아닐 경우 쿠키가 존재하므로 조회수 증가 로직을 처리하지 않음.
			else {
			}
			mav.setViewName("community/writing_detail");
			return mav;
		}else {
			mav.setViewName("community/writing_detail");
			return mav;
		}
	}
	
	// writing_update로 들어가는 컨트롤러
	@RequestMapping(value = "/updatedetailform")
	public ModelAndView updateDetailForm(int wnum) {
		ModelAndView mav = new ModelAndView("community/writing_update");
		Community_BoardVO list = communityDao.WriDetail(wnum);
		mav.addObject("list", list);
		return mav;
	}
	
	// 수정 버튼을 눌러 글을 수정 처리하는 컨트롤러
	@RequestMapping(value = "/updetail")
	public ModelAndView updateDetail(Community_BoardVO vo) {
		communityDao.updateDetail(vo);
		ModelAndView mav = new ModelAndView("redirect:writing_detail?wnum="+vo.getWnum());
		return mav;
	}
	
	// 글을 '삭제 상태'로 만드는 컨트롤러
	@RequestMapping(value = "/dedetail", method = RequestMethod.GET)
	public String deleteDetail(int wnum) {
		communityDao.deleteDetail(wnum);
		return "redirect:comuMain";
	}
	
	// 댓글을 입력 처리하는 컨트롤러
	@RequestMapping(value = "/replyin", method = RequestMethod.POST)
	public ModelAndView insertReply(Community_ReplyVO vo) {
		communityDao.insertReply(vo);
		ModelAndView mav = new ModelAndView("redirect:writing_detail?wnum="+vo.getWnum());
		return mav;
	}
	
	
	// 수정 버튼을 눌러 댓글을 수정 처리하는 컨트롤러
	@RequestMapping(value = "/replyup")
	public ModelAndView updateReply(Community_ReplyVO vo) {
		communityDao.updateReply(vo);
		ModelAndView mav = new ModelAndView("redirect:writing_detail?wnum="+vo.getWnum());
		return mav;
	}
	
	// 삭제 버튼을 눌러 댓글을 삭제 처리하는 컨트롤러
	@RequestMapping(value = "/replydel", method = RequestMethod.GET)
	public ModelAndView deleteReply(Community_ReplyVO vo) {
		communityDao.deleteReply(vo);
		ModelAndView mav = new ModelAndView("redirect:writing_detail?wnum="+vo.getWnum());
		return mav;
	}
		
}
