package kr.co.soldesk.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.domain.MatchRegDTO;
import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.MatchInfoDAO;

@Controller
public class MatchInfoControl {
	@Autowired
	DAO matchRegDAO;

	public void setMatchRegDAO(DAO matchRegDAO) {
		this.matchRegDAO = matchRegDAO;
	}
	
	/*@RequestMapping("/MatchInfo")
	public String processStep1(@ModelAttribute MatchRegDTO matchRegDTO) {
		
		return "matchInfoForm";
	}*/

	@RequestMapping("/MatchInfo")
	public String processStep2(@ModelAttribute MatchRegDTO matchRegDTO) {
		
		
		
		return "matchInfoForm";
	}
	
	
}
