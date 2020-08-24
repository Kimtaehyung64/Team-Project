package mvc.auction.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.auction.dao.AuctionDao;
import mvc.auction.service.AuctionService;
import mvc.auction.vo.AuctionAddDeVO;
import mvc.auction.vo.AuctionAddIpVO;
import mvc.auction.vo.AuctionAddMainVO;
import mvc.auction.vo.AuctionPageVO;
import mvc.auction.vo.AuctionViewVO;
import mvc.login.vo.LogintokenVO;
import mvc.login.vo.UserVO;


@Controller
public class AuctionPage{
	
	@Autowired
	private AuctionService auctionservice;
	
	@Autowired
	private AuctionDao auctiondao;
	
//	@RequestMapping(value="/auctionMain")
//	public String auctionMain() {
//		return "auction/auction_main";
//	}
	
	@Scheduled(fixedRate = 18000000)//180000 3분
	public void updatestatus() {
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date rm = new Date();
		System.out.println("예약작업:"+fm.format(rm));
		auctiondao.updatestatus();
	}
	
	//logintokenins
	@RequestMapping(value = "/logintokenins",method = RequestMethod.GET)
	public void instoken(String aid,String token) {
		System.out.println("to:"+token);
		LogintokenVO vo = new LogintokenVO();
		vo.setAid(aid);
		vo.setToken(token);
		auctiondao.instokendao(vo);
	}
	
	@RequestMapping(value="/fcm")
	public String fcmrun() {
		return "auction/fcm_noti";
	}
	
	@RequestMapping(value="/sse")
	public String sserun() {
		return "auction/sse_noti";
	}
	
	@RequestMapping(value="/auctionAdd")
	public String auctionAdd(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVO sbid =(UserVO)session.getAttribute("user");
		
		if(sbid == null) {
			model.addAttribute("msg","로그인이 필요한 페이지 입니다.");
			model.addAttribute("url","login");
			return "auction/auctionMsg";
		}else {
			model.addAttribute("sbid",sbid.getAid());
			return "auction/auction_add";
		}
	}
	@RequestMapping(value="/auctionDiv")
	public String auctionDiv() {
		return "auction/div";
	}
	@RequestMapping(value="/auctionGGG")
	public String acutionGGG() {
		return "auction/ggg";
	}
	
	
	@RequestMapping(value="/auctionins",method = RequestMethod.POST)
	public ModelAndView auctionins(AuctionAddMainVO vo,AuctionAddDeVO avo,AuctionAddIpVO bvo,HttpServletRequest request) {
		
		//만료일자
		StringBuffer sbe = new StringBuffer();
		sbe.append(bvo.getEdate()).append(" ").append(bvo.getEtime());
		String enddaytime = sbe.toString();
		System.out.println("enddate:"+enddaytime);
		bvo.setEnddate(enddaytime);
		
		//텍스트
		String ptext = bvo.getIr1();
		bvo.setText(ptext);
		
		//이미지파일경로
		String now = new SimpleDateFormat("yyMMddhhmmssSSS").format(new Date());
		int wrmath = (int)(Math.random()*1000);
		int armath = (int)(Math.random()*1000);
		int brmath = (int)(Math.random()*1000);
		int crmath = (int)(Math.random()*1000);
		HttpSession session = request.getSession();
		//String r_path = session.getServletContext().getRealPath("/");
		//System.out.println("Path :"+r_path);
		//String img_path ="resources\\images\\auction\\pics\\";
		//System.out.println("imgPath :"+r_path);
		String mpath = "C:\\ikosmo64\\pics\\";
		
		StringBuffer path1 = new StringBuffer();
		StringBuffer path2 = new StringBuffer();
		StringBuffer path3 = new StringBuffer();
		StringBuffer path4 = new StringBuffer();
		StringBuffer path1_t = new StringBuffer();
		StringBuffer path2_t = new StringBuffer();
		StringBuffer path3_t = new StringBuffer();
		StringBuffer path4_t = new StringBuffer();
		
//		path1.append(mpath);
//		path2.append(mpath);
//		path3.append(mpath);
//		path4.append(mpath);
		//메인이미지
		String oriFn = avo.getWimageP().getOriginalFilename();
		String oriFn1 = avo.getImageaP().getOriginalFilename();
		String oriFn2 = avo.getImagebP().getOriginalFilename();
		String oriFn3 = avo.getImagecP().getOriginalFilename();
		
		System.out.println("oriFn:" + oriFn);
		System.out.println("oriFn1:" + oriFn1);
		System.out.println("oriFn2:" + oriFn2);
		System.out.println("oriFn3:" + oriFn3);
		
		String oriFn_t ="";
		String oriFn1_t ="";
		String oriFn2_t ="";
		String oriFn3_t ="";
		
		if(oriFn == null || oriFn.trim() == "") {
			oriFn_t = "noimg.jpg";
			avo.setWimage(oriFn_t);
		}else {
			oriFn_t = "W"+now+wrmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
			path1.append(mpath).append(oriFn);
			path1_t.append(mpath).append(oriFn_t);
			avo.setWimage(oriFn_t);
			File f = new File(path1.toString());
			File f_t = new File(path1_t.toString());
			f.renameTo(f_t);
			try {
				avo.getWimageP().transferTo(f_t);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(oriFn1 == null || oriFn1.trim() == "") {
			oriFn1_t = "noimg.jpg";
			avo.setImagea(oriFn1_t);
		}else {
		    oriFn1_t = "I1"+now+armath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
		    path2.append(mpath).append(oriFn1);
		    path2_t.append(mpath).append(oriFn1_t);
		    avo.setImagea(oriFn1_t);
		    File f1 = new File(path2.toString());
		    File f1_t = new File(path2_t.toString());
		    f1.renameTo(f1_t);
		    try {
				avo.getImageaP().transferTo(f1_t);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(oriFn2 == null || oriFn2.trim() == "") {
			oriFn2_t = "noimg.jpg";
			avo.setImageb(oriFn2_t);
		}else {
			oriFn2_t = "I2"+now+brmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
			path3.append(mpath).append(oriFn2);
			path3_t.append(mpath).append(oriFn2_t);
			avo.setImageb(oriFn2_t);
			File f2 = new File(path3.toString());
			File f2_t = new File(path3_t.toString());
			f2.renameTo(f2_t);
			try {
				avo.getImagebP().transferTo(f2_t);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(oriFn3 == null || oriFn3.trim() == "") {
			oriFn3_t = "noimg.jpg";
			avo.setImagec(oriFn3_t);
		}else {
			oriFn3_t = "I3"+now+crmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
			path4.append(mpath).append(oriFn3);
			path4_t.append(mpath).append(oriFn3_t);
			avo.setImagec(oriFn3_t);
			File f3 = new File(path4.toString());
			File f3_t = new File(path4_t.toString());
			f3.renameTo(f3_t);
			try {
				avo.getImagecP().transferTo(f3_t);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		auctionservice.addAuction(vo, avo, bvo);
		ModelAndView mav = new ModelAndView("redirect:auctionMain");
		return mav;
	}
	
	//int statussel,int mulgun,int sortindex,int sortad
	@RequestMapping(value = "/auctionMain")
	public String auctionviewlist(AuctionPageVO vo,Model model,HttpServletRequest request,@RequestParam(value = "nowPage",required = false,defaultValue = "1") String nowPage, 
			@RequestParam(value = "cntPage",required = false,defaultValue = "5") String cntPerPage,
			@RequestParam(value = "statussel",required = false,defaultValue = "0") String statussel,
			@RequestParam(value = "mulgun",required = false,defaultValue = "0") String mulgun,
			@RequestParam(value = "sortindex",required = false,defaultValue = "0") String sortindex,
			@RequestParam(value = "searchType",required = false) String searchType,
			@RequestParam(value = "searchValue",required = false) String searchValue
			) {
		int total = auctiondao.getTotalCnt(vo);
		vo = new AuctionPageVO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),Integer.parseInt(statussel),Integer.parseInt(mulgun),Integer.parseInt(sortindex),vo.getSearchType(),vo.getSearchValue());
		//System.out.println(vo.getSearchType()+"::"+vo.getSearchValue());
		model.addAttribute("paging",vo);
		model.addAttribute("list",auctiondao.getAuctionview(vo));
		//세션 값
		HttpSession session = request.getSession();
		//세션 테스트
		//session.setAttribute("user","tests");
		UserVO sbid = (UserVO) session.getAttribute("user");
		if(sbid == null) {
			model.addAttribute("sbid","");
		}else {
			model.addAttribute("sbid",sbid.getAid());
		}
		return "auction/auction_main";

	}	
}
