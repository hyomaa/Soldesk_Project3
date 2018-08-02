package kr.co.soldesk.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.domain.BoardDTO;
import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.TeamInfoImple;

@Controller
public class TeamInfoControl {
	
	@Autowired
	DAO teamInfoDAO;	
	
	@Autowired
	TeamInfoImple teamInfoImple;
	
	public void setDao(DAO teamInfoDAO) {
		this.teamInfoDAO = teamInfoDAO;
	}

	

	
	
	@RequestMapping("/teamInsert")
	public String processStep1(HttpServletRequest req,Model model) {
	
		String e = req.getParameter("board_event");
		int event = Integer.parseInt(e);
		
		
		model.addAttribute("teamEvent", event);
		
		return "teamInsertForm";
	}
	

	
	@RequestMapping("/teamInsertOk")
	public String processStep2(@ModelAttribute TeamInfoDTO teamInfoDTO) {
		
		teamInfoDAO.insertOne(teamInfoDTO);
		
		return "redirect:/teamInfoList?board_event="+teamInfoDTO.getTeam_event();
	}
	
	
	@RequestMapping("/teamDetail")
	public String detail(HttpServletRequest req,Model model) {

		                     
	 model.addAttribute("teamDetail", teamInfoDAO.selectOne(Integer.parseInt(req.getParameter("teamno"))));

		return "teamDetail";
	}
	

	
	@RequestMapping("/myTeamList")
	public String myteam(HttpServletRequest req,Model model) {
		
		//세션에서 유저 정보를 가져온 뒤
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");

		//가입한 팀 정보 가져오기 
		List<TeamInfoDTO> list = teamInfoImple.myTeamInfo(dto.getUser_num());
		
		model.addAttribute("myTeamList", list);
		
		return "myTeamList";
	}
	
	
	@RequestMapping("/myTeamDetail")
	public String myTeamDetail(HttpServletRequest req,Model model) {
		
		TeamInfoDTO dto = (TeamInfoDTO) teamInfoDAO.selectOne( Integer.parseInt(req.getParameter("team_num")));
		
		model.addAttribute("detail", dto);
		
		return "myTeamDetail";
	}
	
	
	@RequestMapping("/teamInfoList")
	public String teamList(HttpServletRequest req, Model model) {
		
		int team_event = Integer.parseInt(req.getParameter("board_event"));
		
		
		
		if(req.getParameter("board_event") != null) {
			
			TeamInfoDTO dto = new TeamInfoDTO();
			dto.setTeam_event(team_event);
			
			List<TeamInfoDTO> list = teamInfoImple.teamInfoByEvent(dto);
			

			
			for(TeamInfoDTO t : list)
			{
				TeamInfoDTO dto2 = teamInfoImple.teamCount(t);
				t.setTeam_count(dto2.getTeam_count());
			}
			
			model.addAttribute("teamInfoList", list);
			model.addAttribute("teamEvent", team_event);
			
			
			return "teamInfoList";
			
		}
		
		
		
		
		return "main";
	}
	
	
	@RequestMapping("/teamInfoLoc")
	public String teamListLoc(HttpServletRequest req, Model model) {
		
		int event = Integer.parseInt(req.getParameter("team_event"));
		String loc = req.getParameter("team_location");
		
		TeamInfoDTO dto = new TeamInfoDTO();
		dto.setTeam_event(event);
		dto.setTeam_location(loc);
		
		
		List<TeamInfoDTO> list = teamInfoImple.teamInfoByEventLoc(dto);
		
		for(TeamInfoDTO t : list)
		{
			TeamInfoDTO dto2 = teamInfoImple.teamCount(t);
			t.setTeam_count(dto2.getTeam_count());
		}
		
		model.addAttribute("teamInfoList", list);
		model.addAttribute("teamEvent", event);
		
		
		return "teamInfoList";
		
	}
	
	
}
