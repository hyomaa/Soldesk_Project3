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
		matchRegDAO.insertOne(matchRegDTO);
		
		
		//UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");

		
		//model.addAttribute("matchReg", matchRegDAO.selectOne(matchRegDTO.getMatchreg_num()));
		model.addAttribute("matchReg", matchRegDAO.selectAll());
		
		
		return "matchRegOk";
	}
	
}
