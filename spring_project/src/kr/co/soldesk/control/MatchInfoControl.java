package kr.co.soldesk.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.MatchInfoDAO;

@Controller
public class MatchInfoControl {
	@Autowired
	DAO matchInfoDAO;

	public void setMatchInfoDAO(DAO matchInfoDAO) {
		this.matchInfoDAO = matchInfoDAO;
	}

	@RequestMapping("/MatchInfo")
	public void processStep1() {
		
	}
	
	
}
