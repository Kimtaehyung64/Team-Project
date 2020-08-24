package mvc.estate.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import mvc.estate.dao.EstateDAO;

@Component
public class ImageUploadFile {
	private static String UPLOADPATH="C:\\ikosmo64\\pics\\";
	@Autowired
	private EstateDAO estateDAO;
	
	public String imgupload(MultipartFile mfile,HttpServletRequest request,int anum,String kind,int filenum) {
		StringBuffer sbe = new StringBuffer();
		StringBuffer sber = new StringBuffer();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String date=sdf.format(new Date());
		
		int num= anum;
		
		String name="";
		if(kind.equals("estate")) {
			name=estateDAO.fileid(num);
		}else if(kind.equals("auction")) {
			
		}
		String fileid=name+date+"_"+filenum;
		
		
		String mpath =UPLOADPATH /*"C:\\ikosmo64\\pics\\"*/;
		String oriFn = mfile.getOriginalFilename();
		System.out.println("파일이름 : "+oriFn);
		if(oriFn.equals("")||oriFn ==null) {
			return "";
		}
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
	
}
