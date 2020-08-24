package mvc.auction.model;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;

import mvc.auction.dao.AuctionDao;
import mvc.auction.vo.FcmidVO;

@RestController
public class FcmPage {
	
	@Autowired
	private AuctionDao auctiondao;
	
	@ResponseBody
	@RequestMapping(value="/fcmcall", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public void fcmTest(int ipnum) throws Exception {
        try {    
    		//fcm
        	FcmidVO avo = new FcmidVO();
    		String subid = auctiondao.getipid(ipnum);
    		avo.setAid(subid);
    		avo.setIpnum(ipnum);
        	List<FcmidVO> list = auctiondao.getfcmidlist(avo);
        	
        	for(FcmidVO e : list) {
        		
        	String path = "C:\\ikosmo64\\privatekey\\budongsan-auction-firebase-adminsdk-pyd7h-0275e9c3f5.json";           
            String MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
            String[] SCOPES = { MESSAGING_SCOPE };
            
            GoogleCredential googleCredential = GoogleCredential
                                .fromStream(new FileInputStream(path))
                                .createScoped(Arrays.asList(SCOPES));
            googleCredential.refreshToken();
                                
            HttpHeaders headers = new HttpHeaders();
            headers.add("content-type" , MediaType.APPLICATION_JSON_VALUE);
            headers.add("Authorization", "Bearer " + googleCredential.getAccessToken());
            
            JSONObject notification = new JSONObject();
            notification.put("body","("+e.getSubject()+")이 상위 입찰 되었습니다");
            notification.put("title", "상위 입찰 안내");
            
            JSONObject message = new JSONObject();
            message.put("token", e.getToken());
            message.put("notification", notification);
            
            JSONObject jsonParams = new JSONObject();
            jsonParams.put("message", message);
            
            HttpEntity<JSONObject> httpEntity = new HttpEntity<JSONObject>(jsonParams, headers);
            RestTemplate rt = new RestTemplate();            
            
            ResponseEntity<String> res = rt.exchange("https://fcm.googleapis.com/v1/projects/budongsan-auction/messages:send"
                    , HttpMethod.POST
                    , httpEntity
                    , String.class);
        
            if (res.getStatusCode() != HttpStatus.OK) {
                System.out.println("FCM-Exception");
                System.out.println(res.getStatusCode().toString());
                System.out.println(res.getHeaders().toString());
                System.out.println(res.getBody().toString());
                
            } else {
            	System.out.println(res.getStatusCode().toString());
            	System.out.println(res.getHeaders().toString());
            	System.out.println(res.getBody().toLowerCase());
            }
            
        	}
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
