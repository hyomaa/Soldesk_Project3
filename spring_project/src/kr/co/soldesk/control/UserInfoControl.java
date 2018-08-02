package kr.co.soldesk.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.soldesk.domain.LoginVO;
import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.TeamRegDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.TeamInfoDAO;
import kr.co.soldesk.persistence.TeamInfoImple;
import kr.co.soldesk.persistence.UserDAO;
import kr.co.soldesk.persistence.UserInfoDAO;


@SessionAttributes("loginUser")
@Controller
public class UserInfoControl {
	
	
	@Autowired
	DAO userDAO;
	
	@Autowired
	UserDAO userDao;
	
	/*@Autowired
	TeamInfoImple teamDAO;*/
	
	
	public void setDao(DAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(value="/userInfoList")
	public String list(Model model) {
		
		List<UserInfoDTO> list = userDAO.selectAll();
		
		model.addAttribute("userlist", list);
		
		return "list";		
	}
	
	@RequestMapping("/insert")
	public String processStep1() {
		return "insertForm";
	}
	

	
	@RequestMapping("/insertOk")
	public String processStep2(@ModelAttribute UserInfoDTO userInfoDTO) {
		
		userDAO.insertOne(userInfoDTO);
		
		return "insertOk";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	

	
	
	
	@RequestMapping("/loginOk")
	public String loginOk(HttpServletRequest req,Model model, HttpSession session){
		
		//이미 세션에 정보가 있으면 작동하는 부분
		if(req.getSession().getAttribute("loginUser") != null) {
			
			return "/spring_project/";
		}
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		
		//id , pw null 처리 부분
		if(id != null && pw != null) {
		
			UserInfoDTO dto = (UserInfoDTO) userDao.selectOneById(id);
			System.out.println(dto.getUser_num());
		
			if(dto.getUser_pw().equals(pw)) {
			   
				//로그인 성공
				model.addAttribute("loginUser", dto);
	
				return "main";
			}else {
				//로그인실패
				return "login";
			}	
		}else {
				return "login";
		}
		
		
	
	}//login end
	
	@RequestMapping("/logout")
	public void logout(SessionStatus ss, HttpServletResponse resp) throws IOException {
		ss.setComplete();
		
		resp.sendRedirect("/spring_project/");
	}
	
	
	
	
	
	@RequestMapping("/myPage")
	public String myPage(HttpServletRequest req) {
		
		//로그인 되어있지 않으면 
		if(req.getSession().getAttribute("loginUser") == null) {
			
			return "login";
		}
				
		return "myPageCheck";
		
	}
	
	
	@RequestMapping("/myPageModify")
	public String myPageMod(HttpServletRequest req,Model model) {
		
		//로그인한 유저의 아이디를 가져와서 입력한 패스워드와 비교
		UserInfoDTO loginUser = (UserInfoDTO) req.getSession().getAttribute("loginUser");
	
		String id = loginUser.getUser_id();
		String pw = req.getParameter("user_pw");
		
		if(id != null && pw != null) {
		
			UserInfoDTO dto = (UserInfoDTO) userDao.selectOneById(id);
			
			if(dto.getUser_pw().equals(pw)) {
				//패스워드 일치시 - 정보수정 페이지로
	
				return "myPageModify";
				
			}else {
				//불일치시 - 원래 페이지로
				
				return "myPageCheck";
			}
		}else {	
				return "myPageCheck";	
		}
	}//myPageMod end
	
	
	@RequestMapping("/myPageModifyOk")
	public String modOk(HttpServletRequest req,Model model,SessionStatus st) {
		
		//사용자가 입력(수정)한 정보들 가져옴
		String user_pw = req.getParameter("user_pw");
		String user_name = req.getParameter("user_name");
		String user_nickname=req.getParameter("user_nickname");
		String user_phone = req.getParameter("user_phone");
		String user_birth = req.getParameter("user_birth");
		String user_loc = req.getParameter("user_loc");
		String user_prof = req.getParameter("user_prof");
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		
		//객체에 담아서 DB내용을 수정한다
		UserInfoDTO userInfoDTO = new UserInfoDTO(user_num, "ID" , user_pw, user_name, 
				user_nickname, "A", user_phone, user_birth, user_loc, user_prof, "18");
		
		userDAO.updateOne(userInfoDTO);
	
		
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		
		//정보가 수정됐으므로, 세션의 정보도 바꿔준다
		model.addAttribute("loginUser",userDao.selectOneById(dto.getUser_id()));
		
		
		return "myPageModify";
	}
	
	
	@RequestMapping("/idPop")
	public String idPop(HttpServletRequest req,Model model) {
		
		String id = req.getParameter("id");
		
		model.addAttribute("id", id);
		
		UserInfoDTO dto = (UserInfoDTO) userDao.selectOneById(id);
		
		if(dto != null) {
			model.addAttribute("check", 0);
		
		}
		
		else
			model.addAttribute("check", 1);
			
		
		return "idCheck";
	}
	
	
	
	
	

}
