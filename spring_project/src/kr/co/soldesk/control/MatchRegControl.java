package kr.co.soldesk.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.domain.BoardDTO;
import kr.co.soldesk.domain.MatchRegDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.MatchInfoDAO;

@Controller
public class MatchRegControl {
	@Autowired
	DAO matchRegDAO;
	
	public void setMatchRegDAO(DAO match_RegDAO) {
		matchRegDAO = match_RegDAO;
	}

	@RequestMapping("/matchRegForm")
	public String processStep1() {
		
		
		return "matchRegForm"; 
	}
	
	@RequestMapping("/matchRegOk")
	public String processStep2(@ModelAttribute MatchRegDTO matchRegDTO, HttpServletRequest req, Model model) {
		int m_event = Integer.parseInt(req.getParameter("m_select"));
		System.out.println(m_event);
		matchRegDTO.setMatchreg_event(m_event);
		
		matchRegDAO.insertOne(matchRegDTO);
		
		//model.addAttribute("insertMatchReg", matchRegDAO.selectAll());
		//model.addAttribute("insertMatchReg", matchRegDAO.selectOne(matchRegDTO.getMatchreg_num()));
		//model.addAttribute("selectOneMatchReg", matchRegDAO.selectOne(3));
		model.addAttribute("selectAllMatchReg", matchRegDAO.selectAll());
		
		return "matchRegOk";
	}
	
	/*@RequestMapping("/matchBoard")
	public String processStep3(HttpServletRequest req, Model model) {
		return "match";
	}*/
	
}
