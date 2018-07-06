package kr.co.soldesk.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.persistence.DAO;
import net.sf.json.JSONObject;


@Controller
public class TestClass {
	
	
	@Autowired
	DAO matchRegDAO;
	
	
	public void setMatchRegDAO(DAO match_RegDAO) {
		matchRegDAO = match_RegDAO;
	}

	@RequestMapping("/matchBoard5")
	public String processStep1(Model model, HttpServletRequest req) {
		
			String loc = req.getParameter("loc");
			String date = req.getParameter("date");
			
		
		
			ArrayList<String> list = new ArrayList<>();
	     
	        
	        JSONObject json = new JSONObject();
	        
	        json.put("title", "1경기");
	        json.put("start","2018-07-01");
	        
	        String data = json.toString();
	        
	        list.add(data);
	        
	        json = new JSONObject();
	        
	        json.put("title", "2경기");
	        json.put("start", "2018-07-02");
	        
	        data = json.toString();
	        
	        list.add(data);
	       
	        model.addAttribute("data", list);
			
	        System.out.println(list);
			return "match5";
		
	}
	
	@RequestMapping("/matchDetail")
	public String process() {
		
		return "matchDetail";
	}
	
	

}
