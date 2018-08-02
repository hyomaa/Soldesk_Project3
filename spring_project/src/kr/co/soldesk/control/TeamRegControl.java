package kr.co.soldesk.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.TeamRegDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;

@SessionAttributes("teamreg")
@Controller
public class TeamRegControl {
	
	@Autowired
	DAO teamRegDAO;	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	
	@Autowired
	DAO teamInfoDAO;
	
	
	
	public void setDao(DAO teamRegDAO) {
		this.teamRegDAO = teamRegDAO;
		
	}
	
	
	
	
	
	public void setTeamInfoDAO(DAO teamInfoDAO) {
		this.teamInfoDAO = teamInfoDAO;
	}





	@RequestMapping("/teamReg")
	public String processStep1(Model model, HttpServletRequest req) {
		
		//팀의 종목과 번호를 받아옴
		int no = Integer.parseInt(req.getParameter("teamevent"));
		int team_num = Integer.parseInt(req.getParameter("teamno"));
		
		//세션에서 유저정보 받아옴
		UserInfoDTO userdto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		TeamRegDTO dto = new TeamRegDTO();
		
		dto.setTeam_num(team_num);
		dto.setTeamreg_event(no);
		dto.setUser_num(userdto.getUser_num());
		
		//객체로 만들어 등록폼으로 보냄
		model.addAttribute("teamreg", dto);
		
		return "teamRegForm";
	}
	

	
	@RequestMapping("/teamRegOk")
	public String processStep2(HttpServletRequest req,Model model) {
		
		//등록폼에서 유저가 선택한 포지션을 받아옴
		String position = req.getParameter("teamreg_position");
		
		//팀정보를 가져와서 포지션과 함께 객체 생성
		TeamRegDTO regdto = (TeamRegDTO) req.getSession().getAttribute("teamreg");
		 regdto.setTeamreg_positon(position);
		
		 //DB에 등록
		 teamRegDAO.insertOne(regdto);
		 
		 //사용자에게 가입한 팀정보를 보여주기 위해
		model.addAttribute("myteam", regdto);
		
		return "teamRegOk";
	}
	

	
	
	
}

