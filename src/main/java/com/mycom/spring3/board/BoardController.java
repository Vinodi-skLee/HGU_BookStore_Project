package com.mycom.spring3.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.spring4.user.UserDAO;
import com.mycom.spring4.user.UserService;
import com.mycom.spring4.user.UserServiceImpl;
import com.mycom.spring4.user.UserVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardDAO boardService;
	
	@Autowired
	UserDAO userService;
	//UserService
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "index";
	}
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping(value = "/login/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";
		System.out.println("들어옴!");
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
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/login/signin", method = RequestMethod.GET)
	public String signin() {
		return "/login/signin";
	}
	
	
	@RequestMapping(value = "/login/signinok", method = RequestMethod.POST)
	public String signinOK(UserVO vo) {
		int i = userService.insertUser(vo);
		if (i==0)
			System.out.println("회원 추가 실패!");
		else
			System.out.println("회원 추가 성공!!!");
		return "redirect:/login/login";
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
	
	@RequestMapping(value = "/board/detail/{id}", method = RequestMethod.POST)
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
