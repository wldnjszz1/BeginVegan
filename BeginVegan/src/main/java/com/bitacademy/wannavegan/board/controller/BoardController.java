package com.bitacademy.wannavegan.board.controller;

import com.bitacademy.wannavegan.board.service.BoardService;
import com.bitacademy.wannavegan.board.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


import java.util.List;



@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;

    @RequestMapping("/Board")
    public ModelAndView list(){
        List<BoardVO> BoardList = boardService.selectAllBoard();

        ModelAndView mav = new ModelAndView("Board/board");
        mav.addObject("BoardList", BoardList);

        return mav;
    }

    @RequestMapping(value = "/Board/write", method = RequestMethod.GET)
    public String WriteForm(){
        return "Board/write";
    }

    @RequestMapping(value = "/Board/write", method = RequestMethod.POST)
    public String Write(BoardVO boardVO){
        boardService.insertBoard(boardVO);

        return "redirect:/Board";
    }

    @RequestMapping(value = "/Board/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable ("id")int id){
        BoardVO boardId = boardService.selectByIdBoard(id);

        ModelAndView mav = new ModelAndView("Board/detail");

        mav.addObject("board", boardId);

        return mav;
    }

    @RequestMapping(value = "/Board/delete/{id}")
    public String deleteBoard(@PathVariable("id") int id) {

        boardService.deleteByIdBoard(id);

        return "redirect:/Board";
    }


    /* 수정 글쓰기 폼으로 넘겨줌*/
    @RequestMapping(value = "/Board/update/{id}", method ={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView updateForm(@PathVariable("id") int id) {

        BoardVO boardId = boardService.selectByIdBoard(id);
        ModelAndView mav = new ModelAndView("Board/update");
        mav.addObject("boardVO", boardId);

        return mav;
    }

    /*수정된 데이터들을 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/Board/update", method = RequestMethod.POST)
    public String update(BoardVO boardVO) {
        boardService.updateByIdBoard(boardVO);

        return "redirect:/Board";
    }

}

