package com.mycom.spring3.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.spring4.user.UserDAO;
import com.mycom.spring4.user.UserVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardDAO boardService;
	
	@Autowired
	UserDAO userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping(value = "/login/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";
		System.out.println("한동책방 입장!");
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}

		UserVO loginvo = userService.getUser(vo);
		if (loginvo != null) { // 로그인 성공
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/board/list";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/login/signin", method = RequestMethod.GET)
	public String signin() {
		return "/login/signin";
	}
	
	
	@RequestMapping(value = "/login/signinok", method = RequestMethod.POST)
	public String signinoK(HttpSession session, UserVO vo, Model model) {
		System.out.println("중복체크 들어옴!");
		String msg = " ";
		UserVO signinvo = userService.getDuplicatedUser(vo);
		if (signinvo != null) { // 중복 데이터 존재
			System.out.println("중복 데이터 존재!");
			msg = "회원가입 실패: 중복 데이터 존재함!";
		} else {// 중복 데이터 없음
			int i = userService.insertUser(vo);
			if (i==0) {
				System.out.println("회원 추가 실패!");
				msg = "회원가입 실패: 데이타 베이스 저장 실패!";
			}	
			else {
				System.out.println("회원 추가 성공!!!");
				msg = "회원가입 성공!";
			}	
		}
		model.addAttribute("msg", msg);
		return "/login/signinAlert";
	}
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "/board/list";
	}
	
	@RequestMapping(value = "/board/add", method = RequestMethod.GET)
	public String addPost() {
		return "/board/addform";
	}
	
	@RequestMapping(value = "/board/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if (i==0)
			System.out.println("데이터 추가 실패!");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("boardVO", boardVO);
		return "/board/editform";
	}
	
	@RequestMapping(value = "/board/editok", method = RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if (i==0)
			System.out.println("데이터 수정 실패!");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/board/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id) {
		return "/board/detail";
	}
	
	@RequestMapping(value = "/board/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = boardService.deleteBoard(id);
		if (i==0)
			System.out.println("데이터 삭제 실패!");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:/board/list";
	}
}
