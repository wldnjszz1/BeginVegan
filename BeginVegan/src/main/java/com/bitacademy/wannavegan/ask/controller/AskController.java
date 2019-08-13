package com.bitacademy.wannavegan.ask.controller;

import com.bitacademy.wannavegan.ask.service.AskService;
import com.bitacademy.wannavegan.ask.vo.AskVO;
import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@SessionAttributes({"loginVO"})
@Controller
public class AskController {

    @Autowired
    private AskService askService;


    /*전체 게시글 조회. 서비스에서 데이터 받아서 뿌려줌*/
    @GetMapping("/askBoard")
    public ModelAndView List() {
        List<AskVO> askBoardList = askService.selectAllBoard();

        ModelAndView mav = new ModelAndView("askBoard/askboard");
        mav.addObject("askBoardList", askBoardList);

        return mav;
    }

    /*새 글쓰기 폼으로 넘겨줌*/
    @GetMapping("/askBoard/askwrite")
    public String AskWriteForm(@ModelAttribute MemberVO loginVO, Model model) {
        return "askBoard/askwrite";
    }

    /*입력된 데이터들을 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/askBoard/askwrite", method = RequestMethod.POST)
    public String AskWrite(AskVO askVO)  {
        askService.insertBoard(askVO);

        //한번 찍어봄
        //System.out.println(askVO);

        return "redirect:/askBoard";
    }

    /*게시글 상세 보기*/

    @RequestMapping(value = "/askBoard/{id}", method = RequestMethod.GET)
    public ModelAndView Detail(@PathVariable("id") int id) {
        AskVO askId = askService.selectByIdBoard(id);

        /*한번 찍어보기*/
        //System.out.println("조회할 번호: " + askId);

        ModelAndView mav = new ModelAndView("askBoard/askdetail");
        mav.addObject("ask", askId);

        return mav;
    }

    @RequestMapping(value = "/askBoard/remove/{id}")
    public String removeBoard(@PathVariable("id") int id) {
        /*찍어보기*/
        //System.out.println("삭제할 번호 : " + id);

        askService.deleteByIdBoard(id);

        return "redirect:/askBoard";
    }

    /* 수정 글쓰기 폼으로 넘겨줌*/
    @RequestMapping(value = "/askBoard/askupdate/{id}", method ={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView updateForm(@PathVariable("id") int id) {

        AskVO askId = askService.selectByIdBoard(id);
        ModelAndView mav = new ModelAndView("askBoard/askupdate");
        mav.addObject("askVO", askId);

        //한번 찍어봄
        //System.out.println(askId);

        return mav;
    }

    /*수정된 데이터들을 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/askBoard/askupdate", method = RequestMethod.POST)
    public String update(AskVO askVO) {
        askService.updateByIdBoard(askVO);

        //한번 찍어봄
        //System.out.println(askVO);

        return "redirect:/askBoard";
    }

    /* 답글 글쓰기 폼으로 넘겨줌*/
    @RequestMapping(value = "/askBoard/askreply/{id}", method ={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView replyForm(@PathVariable("id") int id) {

        AskVO askId = askService.selectByIdBoard(id);
        ModelAndView mav = new ModelAndView("askBoard/askreply");
        mav.addObject("askVO", askId);

        //한번 찍어봄
        //System.out.println("답글 데이터 : " + askId);

        return mav;
    }

    /* 답글 쓴 데이터를 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/askBoard/askreply", method = RequestMethod.POST)
    public String reply(AskVO askVO) {
        askService.replyInsertBoard(askVO);

        //한번 찍어봄
        //System.out.println("넘어가 저장된 데이터: "+ askVO);

        return "redirect:/askBoard";
    }

}
