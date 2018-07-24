
package kr.co.soldesk.control;


import java.io.IOException;
//p2
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.soldesk.domain.BoardDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.BoardImple;
import kr.co.soldesk.persistence.DAO;

@Controller
public class BoardControl {
	
	
	@Autowired
	DAO boardDAO;	
	
	
	@Autowired
	BoardImple boardImple;
	
	public void setDao(DAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	
	

	public void setBoardImple(BoardImple boardImple) {
		this.boardImple = boardImple;
	}




	/*//모든 게시글 리스트
	@RequestMapping(value="/boardList")
	public String list(Model model) {
		
		List<BoardDTO> list = boardDAO.
		
		model.addAttribute("boardlist", list);
		
		return "boardList";		
	}*/
	
	
	//종목별, 카테고리별 게시판 리스트
	
	/*@RequestMapping(value="/cateBoardList")*/
/*	@RequestMapping(value="/boardList")
	public String cateList(@ModelAttribute BoardDTO boardDTO,Model model) {
		
		List<BoardDTO> list = boardImple.selectAllByCate(boardDTO);
		
		
		model.addAttribute("boardlist",list);
		
		return "boardList";
	}*/
	
	@RequestMapping(value="/boardList")
	public String list(HttpServletRequest req, Model model) {
		
		String board_event = req.getParameter("board_event");
		String board_category = req.getParameter("board_category");
		
		if(board_event != null && board_category != null) {
			
		int event = Integer.parseInt(board_event);
		int category = Integer.parseInt(board_category);
	
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setBoard_event(event);
		boardDTO.setBoard_category(category);
		
		List<BoardDTO> list = boardImple.selectAllByCate(boardDTO);
		
		for(BoardDTO dto : list) {
			
			dto.setBoard_date(dto.getBoard_date().substring(0, 16));
			
		}
		
		
		model.addAttribute("boardlist",list);
		model.addAttribute("board_event",board_event);
		model.addAttribute("board_category",board_category);
		}
		return "boardList";
	}
	
	
	
	//게시글 입력
		@RequestMapping("/")
		public String processStep() {
			return "main";
		}
		
		
		
		
		@RequestMapping("/soccerMain")
		public String processStep5(HttpServletRequest req,Model model) {
			
			int board_event =Integer.parseInt( req.getParameter("board_event"));
			int board_category = Integer.parseInt( req.getParameter("board_category"));
			
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setBoard_event(board_event);
			boardDTO.setBoard_category(board_category);
			
			
			List<BoardDTO> list = boardImple.selectAllByCate(boardDTO);
			
			for(BoardDTO dto : list) {
				
				dto.setBoard_date(dto.getBoard_date().substring(0, 10));
				
			}
			
			
			model.addAttribute("boardlist",list);
			
			model.addAttribute("board_event",board_event);
			
			
			boardDTO.setBoard_category(2);
			
			list = boardImple.selectAllByCate(boardDTO);
			
			for(BoardDTO dto : list) {
				
				dto.setBoard_date(dto.getBoard_date().substring(0, 10));
				
			}
			
			model.addAttribute("boardlist2", list);
			
			
			return "soccerMain";
		}
	
	
	//게시글 입력
	@RequestMapping("/boardInsert")
	public String processStep1(HttpServletRequest req,Model model) {
		String board_event = req.getParameter("board_event");
		String board_category = req.getParameter("board_category");
		
		model.addAttribute("board_event",board_event);
		model.addAttribute("board_category",board_category);
		
		return "boardInsertForm";
	}
	
	
	
	@RequestMapping("/boardInsertOk")
	public void processStep2(@ModelAttribute BoardDTO boardDTO,HttpServletRequest req,HttpServletResponse resp,Model model) throws IOException {
			
			String u = req.getParameter("user_num");
			String e = req.getParameter("board_event");
			String c = req.getParameter("board_category");
			
			
			int usernum = Integer.parseInt(u);
			int event = Integer.parseInt(e);
			int cate = Integer.parseInt(c);
			
			boardDTO.setUser_num(usernum);
			boardDTO.setBoard_category(cate);
			boardDTO.setBoard_event(event);
		
			boardDAO.insertOne(boardDTO);
		
			
			resp.sendRedirect("/spring_project/boardList?board_event="+e+"&board_category="+c);
			
		}
		
		

	//게시물 디테일보기
	@RequestMapping("/boardDetail")
	public String detail(HttpServletRequest req,Model model) {
	
		if(req.getParameter("no") != null) {
		

		//조회수 증가
		
		boardImple.updateHits(Integer.parseInt(req.getParameter("no")));
		
		
		//게시물 정보 가져오기
		
		model.addAttribute("boardDetail", boardDAO.selectOne(Integer.parseInt(req.getParameter("no"))));
		
		String board_event = req.getParameter("board_event");
		String board_category = req.getParameter("board_category");
		

		
		
		model.addAttribute("board_event",board_event);
		model.addAttribute("board_category",board_category);
		
		
		
		
		return "boardDetail";
		
		}else
			
			return "main";
	}
	
	
	
	@RequestMapping("/boardModify")
	public String modify(HttpServletRequest req,Model model) {

		
	model.addAttribute("boardModify", boardDAO.selectOne(Integer.parseInt(req.getParameter("no"))));

		return "boardModify";
	}
	
	
	
	
	
	@RequestMapping("/modifyOk")
	public String ModifyOk(@ModelAttribute BoardDTO boardDTO,HttpServletResponse resp) throws IOException {
	
		
boardDAO.updateOne(boardDTO);	
		
		return "redirect:/boardList?board_category="+boardDTO.getBoard_category()+"&board_event="+boardDTO.getBoard_event();			
		
		
		}
	

	

	/*//게시물 삭제
	@RequestMapping("/deleteBoard")
	public void delete(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		
		
		boardDAO.deleteOne(Integer.parseInt(req.getParameter("no")));
		
		resp.sendRedirect("boardList");

	}*/
	
	@RequestMapping("/deleteOk")
	public String delete(@ModelAttribute BoardDTO boardDTO) {
			
			boardDAO.deleteOne(boardDTO.getBoard_num());
			
			return "redirect:/boardList?board_category="+boardDTO.getBoard_category()+"&board_event="+boardDTO.getBoard_event();		
			
		}
	
	
	
	@RequestMapping("/myBoard")
	public String myboard(HttpServletRequest req,Model model) {
		
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		
		List<BoardDTO> list = boardImple.selectAllMyBoard(dto.getUser_num());
		
		model.addAttribute("myBoardList", list);
		
		return "myBoardList";
		
	}
	
	
	
	@RequestMapping("/nomUpdate")
	public void nomUpdate(HttpServletRequest req,HttpServletResponse resp) throws IOException
	{
		String n = req.getParameter("board_num");
		String event = req.getParameter("board_event");
		String cate = req.getParameter("board_category");
		
		if(n != null ) {
		
			int no = Integer.parseInt(n);
			boardImple.updateNom(no);
			
			resp.sendRedirect("/spring_project/boardDetail?no="+no+"&board_category="+cate+"&board_event="+event);
		
		}
		
			}

}
