package com.bitacademy.wannavegan.ask.controller;

import com.bitacademy.wannavegan.ask.mapper.AskMapper;
import com.bitacademy.wannavegan.ask.service.AskService;
import com.bitacademy.wannavegan.ask.vo.AskVO;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import sun.font.EAttribute;

import java.util.List;

@Controller
public class AskController {

    @Autowired
    private AskService askService;

    /*전체 게시글 조회. 서비스에서 데이터 받아서 뿌려줌*/
    @RequestMapping("/askBoard")
    public ModelAndView List() {
        List<AskVO> askBoardList = askService.selectAllBoard();

        ModelAndView mav = new ModelAndView("askBoard/askboard");
        mav.addObject("askBoardList", askBoardList);

        return mav;
    }

    /*새 글쓰기 폼으로 넘겨줌*/
    @RequestMapping(value = "/askBoard/askwrite", method = RequestMethod.GET)
    public String AskWriteForm() {
        return "askBoard/askwrite";
    }

    /*입력된 데이터들을 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/askBoard/askwrite", method = RequestMethod.POST)
    public String AskWrite(AskVO askVO) {
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

}
