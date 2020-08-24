package mvc.estate.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import mvc.commercial.vo.CommercialProductVO;
import mvc.commercial.vo.PageVO;
import mvc.estate.dao.EstateDAO;
import mvc.estate.service.EstateService;
import mvc.estate.util.ImageUploadFile;
import mvc.estate.vo.AddInfoVO;
import mvc.estate.vo.EstatePageVO;
import mvc.estate.vo.EstateSearchVO;
import mvc.estate.vo.EstateVO;
import mvc.estate.vo.ForSaleVO;
import mvc.estate.vo.ForSale_InfoVO;
import mvc.estate.vo.ForSale_Info_EstateVO;
import mvc.estate.vo.ForSale_Info_StoreVO;
import mvc.estate.vo.Forsale_ImgVO;

@Controller
public class EstatePage{
	@Autowired
	private EstateDAO estateDAO;
	
	@Autowired
	private EstateService estateService;
	
	@Autowired
	private ImageUploadFile imageUploadFile;
	
	
	@RequestMapping(value="/estateMain")
	public String goEstate() {
//		List<ForSaleVO> anumList=estateDAO.anumSelect();
//		List<ForSaleVO> fnumList=estateDAO.fnumSelect();
//		int num = 0;
//		for(ForSaleVO fvo : fnumList) {
//			if(num==anumList.size()-1) {
//				num=0;			}
//			fvo.setAnum(anumList.get(num).getAnum());
//			estateDAO.anumUpdate(fvo);
//			num++;
//		}
//		
		
		
		// 이미지 번호 맞추기
//		List<ForSaleVO> fnumList=estateDAO.fnumList();
//		for(ForSaleVO fs : fnumList) {
//			int num=0;
//			int finum=0;
//			List<Forsale_ImgVO> fimgList=estateDAO.fimgList();
//			for(Forsale_ImgVO fi: fimgList) {
//				if(num==0) {
//					finum=fi.getFnum();
//				}
//				if(finum==fi.getFnum()) {
//					List<Integer> nums= new ArrayList<Integer>();
//					nums.add(fs.getFnum());
//					nums.add(fi.getFnum());
//					ForSaleVO fvo=new ForSaleVO();
//					fvo.setNums(nums);
//					estateDAO.fimgUpdate(fvo);
//				}
//				num++;
//			}
//		}
		
		return "estate/estate";
	}
	@RequestMapping(value="/addestate")
	public String estateAdd() {
		return "estate/addestate";
	}
	@RequestMapping(value="/estateDetail")
	public String goEsateDetail(int num,String kind,Model m) {
		//ForSaleVO vo=estateDAO.estateDetail(num);
		ForSaleVO fvo =new ForSaleVO();
		fvo.setFnum(num);
		fvo.setFkind(kind);
		ForSaleVO vo = estateDAO.estateDetail_main(fvo);
		ForSale_InfoVO fivo=vo.getFinvo();
		if(vo.getFkind().equals("상가/사무실")) {
			
			fivo.setFisvo(estateDAO.getFis(fivo.getFpnum()));
		
		}else {
			
			fivo.setFievo(estateDAO.getFie(fivo.getFpnum()));
		}
		System.out.println(vo.getAnum());
		vo.setSign(estateDAO.estateDetail_signup(vo.getAnum()));
		vo.setFimg(estateDAO.getimg(vo.getFnum()));
		vo.setDeposit(moneyUnit(vo.getDeposit()));
		if(vo.getFsalekind().equals("월세")) {
			vo.setRent(moneyUnit(vo.getRent()));			
		}
		vo.setFinvo(fivo);
		vo.setSubject(fivo.getFcontent().split("/n")[0].replaceAll("/n",""));
		vo.getFinvo().setFcontent(vo.getFinvo().getFcontent().replace("/n", "\n"));
		m.addAttribute("vo",vo);
		return "estate/estateDetaile";
	} 
	@RequestMapping(value = "/insertestate",method = RequestMethod.POST)
	public ModelAndView insertestate(HttpServletRequest request,MultipartFile[] mfile,EstateVO estate,AddInfoVO addinfo,ForSale_Info_StoreVO fisvo,String[] rentv, String[] rpay,String[] pay,String[] administrat,String[] imgName,String mainaddr,String subaddr,String zipNo,String[] structure,String admindong,String lat , String lng,String parkings) {
			ModelAndView mav= new ModelAndView("estate/estate");
			long time1=System.currentTimeMillis();
			System.out.println("등록시작");
			estate.setDetaillocation(mainaddr+subaddr);
			List<Forsale_ImgVO> imageName= new ArrayList<Forsale_ImgVO>();
			System.out.println("파일의 갯수는?"+mfile.length);
			int filenum=1;
			for(MultipartFile m:mfile) {
				String name=imageUploadFile.imgupload(m, request, estate.getAnum(),"estate",filenum);
				System.out.println(name);
				if(!name.equals("")) {
					Forsale_ImgVO fivo=new Forsale_ImgVO();
					String[] n=name.split(".");
					for (int k=0;k<n.length;k++) {
						System.out.println(k+" "+n[k]);
					}
					fivo.setFname(name.substring(0,name.lastIndexOf(".")));
					fivo.setFtype(name.substring(name.lastIndexOf("."),name.length()));
					System.out.println(fivo.getFname() + " / "+ fivo.getFtype());
					imageName.add(fivo);					
				}
				filenum+=1;
			}


			
			ForSaleVO fvo = new ForSaleVO();
			fvo.setAnum(estate.getAnum());
		
			// A01 = 아파트
			// A02 = 오피스텔
			// C01 = 원룸
			// C02 = 투룸
			// C03 = 쓰리룸
			System.out.println("매물종류는 들어오나."+estate.getBuild());
			
			
			if(estate.getBuild().equals("A01")) {
				fvo.setFkind("아파트");
			}else if(estate.getBuild().equals("A02")) {
				fvo.setFkind("오피스텔");
			}else if(estate.getBuild().equals("C01")) {
				fvo.setFkind("원룸");
			}else if(estate.getBuild().equals("D02")) {
				fvo.setFkind("상가/사무실");
			}else if(estate.getBuild().equals("C03")) {
				fvo.setFkind("투룸ㆍ쓰리룸");
			}
			System.out.println("매물종류는 들어오나."+estate.getBuild());
			fvo.setFimg(imageName);
			if(estate.getRentv()[0].equals("B2")) {
				
				fvo.setFsalekind("월세");
				fvo.setDeposit(estate.getRpay()[0].split("/")[0].replaceAll("/","").trim());
				fvo.setRent(estate.getRpay()[0].split("/")[1].replaceAll("/","").trim());
			}else if(estate.getRentv()[0].equals("B1")) {
				fvo.setFsalekind("전세");
				fvo.setDeposit(estate.getRpay()[0].trim());
				fvo.setRent("0");
				
			}else if(estate.getRentv()[0].equals("A1")) {
				fvo.setFsalekind("매매");
				fvo.setDeposit(estate.getRpay()[0].trim());
				fvo.setRent("0");
			}
			fvo.setFstatus("N");
			
			ForSale_InfoVO fivo = new ForSale_InfoVO();
			String location = mainaddr+"/"+subaddr;
			
			fivo.setDistrict(location.split(" ")[1]);
			fivo.setLat(lat);
			fivo.setLng(lng);
			fivo.setAdmindong(admindong.trim());
			
			fivo.setZipNo(zipNo);
			fivo.setFlocation(mainaddr+"/"+subaddr);
			fivo.setTfloor(estate.getFloor().split("/")[0]);
			fivo.setBfloor(estate.getFloor().split("/")[1]);
			fivo.setFexarea(String.valueOf(Math.round(estate.getExclusive()*100)/100.0));
			fivo.setFsuparea(String.valueOf(Math.round(estate.getSupply()*100)/100.0));
			fivo.setHeating(addinfo.getHeating());
			fivo.setFcontent(addinfo.getDescription());
			fivo.setFadmin(addinfo.getPay()[0]);
			StringBuffer sb = new StringBuffer();
			for(int k=0;k< administrat.length;k++) {
				sb.append(administrat[0]);
				if(k< administrat.length-1) {
					sb.append(",");
					
				}
			}
			fivo.setFadop(sb.toString());
			fivo.setEleva(addinfo.getElevator());
			sb=new StringBuffer();
			for (String n :addinfo.getMove()) {
				sb.append(n).append("/");
			}
			fivo.setFmove(sb.toString());
			fivo.setFsubject(estate.getTitle());
			
			if(fvo.getFkind().equals("상가/사무실")) {
				if(parkings.equals("불가능")) {
					fisvo.setFparking("불가능");
					
				}else {
					fisvo.setFparking(fisvo.getFparking()+"대");
				}
				fivo.setFisvo(fisvo);
				
			}else {
				fivo.setFievo(new ForSale_Info_EstateVO());
				
					for(int k=0 ; k<rentv.length;k++) {
						if(rentv[k].equals("B2")) {
							fivo.getFievo().setMonthly(rpay[k]);
						}else if(rentv[k].equals("B1")){
							fivo.getFievo().setCharter(rpay[k]);
						}
					}
					fivo.getFievo().setFsubject(estate.getTitle());
					fivo.getFievo().setAnimal(addinfo.getPets());
					fivo.getFievo().setFcharter(addinfo.getChartered());
					fivo.getFievo().setBuilt(addinfo.getBuilt());
					
					fivo.getFievo().setShortrent(estate.getDan());
					
					sb = new StringBuffer();
					System.out.println("옵션은 존재하나"+addinfo.getOption());
					for(int k =0;k<addinfo.getOption().length;k++) {
						sb.append(addinfo.getOption()[k]);
						if(k<addinfo.getOption().length-1) {
							sb.append(",");
						}
					}
					fivo.getFievo().setFoption(sb.toString());
					fivo.getFievo().setVeranda(addinfo.getBalcony());
					
					String Monprice="";
					String chprice="";
					String traprice="";
					for(int i =0;i<rentv.length;i++) {
						String name=rentv[i];
						String kind="";
						if(name.equals("B2")) {
							Monprice+=rpay[i]+",";
						}else if(name.equals("B1")) {
							chprice=rpay[i]+",";
							
						}else if(name.equals("A1")) {
							traprice=rpay[i]+",";
						}
					}
					fivo.getFievo().setMonthly(Monprice);
					fivo.getFievo().setCharter(chprice);
					fivo.getFievo().setTrades(traprice);
					
			}
			
			estateService.addEstate(fvo, fivo);
			
			mav.addObject("msg","등록이 완료되었습니다.");
			
		return mav;
	}
	
	@RequestMapping(value = "infoHtml")
	public ModelAndView infoHtml(String kind) {
		ModelAndView mv = new ModelAndView();
		if(kind.equals("addinfo")) {
			mv.setViewName("estate/server/addinfo");
		}else {
			mv.setViewName("estate/server/estateinfo");
		}
		
		return mv;
	}
	
	
	public String getPrice(String price) {
		String getprice ="";
		if(price.equals("0만원")) {
			return "0";
		}
		else if(price.indexOf("억")!=-1) {
			if(price.indexOf("만원")!=-1) {
				getprice = price.split("억")[0].replaceAll("억", "").trim();
				if(price.split("억")[1].replaceAll("만원","").trim().length()<4) {
					int num=price.split("억")[1].replaceAll("만원","").trim().length();
					String set = price.split("억")[1].replaceAll("만원","").trim();
					
					for(int i =num;i<4;i++) {
						set+=set+"0";
					}
					getprice=getprice+set;
				}else {
				
					getprice=getprice+price.split("억")[1].replaceAll("만원","").trim();
				}
			}else {
				 getprice = price.replaceAll("억","").trim()+"0000";
			}
		}else if(price.indexOf("만원")!=-1) {
			
			 
			 String set=price.replaceAll("만원", "").trim();
			
			
			getprice=set;
				
		}
		else if(price.equals("무제한")) {
			return price;
		}
	
		return getprice;
	}
	
	public String moneyUnit(String price) {
		String tet="";
		if(price.length()>4) {
			tet=price.substring(0,price.length()-4)+"억";
			if(!price.substring(price.length()-4,price.length()).equals("0000")) {
				tet=tet+price.substring(price.length()-4,price.length())+"만원";
			}
			
		}else if(!price.equals("0")){
			tet=price+"만원";
		}
		price=tet;
		return price;
	}
	
	
	@RequestMapping(value = "/estatelist",method = RequestMethod.POST)
	public ModelAndView estatelist(@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,EstateSearchVO esvo) {
		ModelAndView mav = new ModelAndView("estate/server/estatelist");
		System.out.println(esvo.getKeyword());
		esvo.setDeposits_to(getPrice(esvo.getDeposits_to()).trim());
	
		esvo.setMonthmoenys_to(getPrice(esvo.getMonthmoenys_to()).trim());
		
		esvo.setRoomCare_to(getPrice(esvo.getRoomCare_to()).trim());
		esvo.setTrades_to(getPrice(esvo.getTrades_to()).trim());
		if(esvo.getRoomArea_to().indexOf("m²") != -1) {
			String[] area=esvo.getRoomArea_to().split("m²");
			
			esvo.setRoomArea_to(area[0]);
		}
		esvo.setDeposits_from(getPrice(esvo.getDeposits_from()).trim());
		
		esvo.setMonthmoenys_from(getPrice(esvo.getMonthmoenys_from()).trim());
	
		esvo.setRoomCare_from(getPrice(esvo.getRoomCare_from()).trim());
		esvo.setTrades_from(getPrice(esvo.getTrades_from()).trim());
		if(esvo.getRoomArea_from().indexOf("m²") != -1) {
			String[] area=esvo.getRoomArea_from().split("m²");	
			esvo.setRoomArea_from(area[0]);
		}
		EstatePageVO pvo = new EstatePageVO(estateDAO.listCount2(esvo), Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		if(esvo!=null && !esvo.equals("")) {
			pvo.setEsvo(esvo);
		}
		List<ForSaleVO> forlist=estateDAO.fsalelist(pvo);
		for(ForSaleVO n : forlist) {	
			Forsale_ImgVO NUM=estateDAO.setimg(n.getFnum());
			List<Forsale_ImgVO> imglist=new ArrayList<Forsale_ImgVO>();
			imglist.add(NUM);
			n.setFimg(imglist);
			int len=n.getFinvo().getFcontent().length();
			if(len >10) {
				n.getFinvo().setFcontent(n.getFinvo().getFcontent().substring(0, 11));
			}
			n.setDeposit(moneyUnit(n.getDeposit()));
			if(n.getFsalekind().equals("월세")) {
				n.setRent(moneyUnit(n.getRent()));
			}
		}
		mav.addObject("fsale",forlist);
		mav.addObject("paging",pvo);
		return mav;
	}
	
	@RequestMapping(value = "/imgupload",method = RequestMethod.POST)
	@ResponseBody
	public String imgupload(MultipartFile mfile,HttpServletRequest request,String anum) {
		StringBuffer sbe = new StringBuffer();
		StringBuffer sber = new StringBuffer();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String date=sdf.format(new Date());
		
		int num= Integer.parseInt(anum);
		String name=estateDAO.fileid(num);
		String fileid=name+date;
		
		
		String mpath = "C:\\ikosmo64\\pics\\";
		String oriFn = mfile.getOriginalFilename();
		sber.append(mpath).append(fileid).append(oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length()));
		fileid+=oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length());
		sbe.append(mpath).append(oriFn);
		File f=new File(sbe.toString());
		File rf=new File(sber.toString());
		f.renameTo(rf);
		try {
			mfile.transferTo(rf);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return fileid;
	}
	
	
	
	@RequestMapping(value = "/commentlist",method =  RequestMethod.POST)
	public String commentlist(String remeber,String text,Model m) {
		
		if(remeber.equals("원룸")) {
			remeber="C01";
		}
		else if(remeber.equals("아파트")) {
			remeber="A01";
		}
		else if(remeber.equals("오피스텔")) {
			remeber="A02";
		}
		else if(remeber.equals("주택")) {
			remeber="C03";
		}
		if(text.equals("전세")) {
			text="B1";
		}
		else if(text.equals("월세")) {
			text="B2";
		}
		else if(text.equals("매매")) {
			text="A1";
		}
		
		PageVO vo =new PageVO();
		vo.setSearchType("1");
		vo.setSearchValue(remeber);
		if(!remeber.equals(text)) {
			vo.setSearchType2("1");
			vo.setSearchValue2(text);
		}
//		List<CommercialProductVO> list=estateDAO.commentList(vo);
//		
//		for(CommercialProductVO e:list) {
//			System.out.println("타이틀 :"+e.getAtclfetrdesc());
//			System.out.println("이미지 :"+e.getImg());
//			System.out.println("번호:"+e.getPdnum());
//		}
//		
//		m.addAttribute("list", list);
		
		return "estate/server/recentCntServer";
	}
}
