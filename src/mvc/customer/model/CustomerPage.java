package mvc.customer.model;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.comunity.vo.Community_PageVO;
import mvc.customer.dao.Customer_BoardDao;
import mvc.customer.vo.Customer_BoardVO;
import mvc.customer.vo.Customer_PageVO;






@Controller
public class CustomerPage{

	@Autowired
	private Customer_BoardDao customerdao;
	
	
	
	@RequestMapping(value="/customer") 
	public String goBoard() {
		return "customer_board1/customerboard";  
	}
	


	
	//페이지 띄우기위한 메서드(뷰) CRUD 중 C
	@RequestMapping(value="/customerboardWriter")
	public String writeBoard() throws Exception {
		
		return "customer_board1/customerboardWrite";
	}
	
	//입력받은 값을 처리하기위한 메소드
	@RequestMapping(value="/boardin" , method = RequestMethod.POST)
	public ModelAndView writeBoard(Customer_BoardVO vo) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		customerdao.addwrite(vo);
		mav.setViewName("redirect:listall");
		return mav;
		
	}
		
	// CRUD 중 R 상세페이지 불러오기. -> 게시판 목록 불러오기 	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String customerList(Model model
			) throws Exception{
				
		List<Customer_BoardVO> list = customerdao.getlist();
		model.addAttribute("list",list);
		
		return "customer_board1/customerboard";  
	}
	
	//리스트목록 + 페이징
	@RequestMapping(value = "/listall")
	public String writingAllList(Customer_PageVO pvo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(value = "sortindex", required = false, defaultValue = "1") String sortindex,
			@RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchValue,Customer_BoardVO vo) throws Exception{

		int total = customerdao.getCountAll(pvo);
		pvo = new Customer_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), Integer.parseInt(sortindex));
		pvo.setSearchType(searchType);
		pvo.setSearchValue(searchValue);
		model.addAttribute("paging", pvo);
		model.addAttribute("listall", customerdao.listAll(pvo));
		model.addAttribute("total", total);
		
		return "customer_board1/customerboard";
	}
	
  
	// 게시판 상세보기 
//		@RequestMapping(value="/Detail", method = RequestMethod.GET)
//		public String customerDetail(Model model, HttpServletRequest req) throws Exception {
//			
//			
//			
//			String c_num = req.getParameter("c_num");
//			
//			model.addAttribute("detail", customerdao.getDetail(Integer.parseInt(c_num)));
//			
//			return "customer_board1/customerboardDetail";
//			 
//		}
		
		@RequestMapping(value="/Detail", method = RequestMethod.GET)
		public String customerDetail(Model model, int c_num) throws Exception {
			
			model.addAttribute("detail", customerdao.getDetail(c_num));
			model.addAttribute("reply",customerdao.getReply(c_num));
			
			return "customer_board1/customerboardDetail";
			 
		}
		
		// update로 들어가는 컨트롤러
		@RequestMapping(value = "/updatedetail")
		public ModelAndView updateDetailForm(int c_num) throws Exception{
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("detail", customerdao.getDetail(c_num));
			mav.setViewName("customer_board1/customerboardUpdate");
			
			return mav;
		}
		
		// 수정 버튼을 눌러 수정하는 컨트롤러
		@RequestMapping(value = "/cusUpdate")
		public ModelAndView updateDetail(Customer_BoardVO vo) throws Exception{
			customerdao.updateDetail(vo);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:listall");
					
			return mav;
		}
		
		// 삭제처리
		@RequestMapping(value = "/cusBoardDelete", method = RequestMethod.GET)
		public String deleteDetail(int c_num) throws Exception{
			customerdao.deleteDetail(c_num);
			
			return "redirect:listall";
		}
		
		

		

}
