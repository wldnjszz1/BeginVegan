package com.bitacademy.wannavegan.ask.controller;

import com.bitacademy.wannavegan.ask.service.AskService;
import com.bitacademy.wannavegan.ask.vo.AskVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


}
