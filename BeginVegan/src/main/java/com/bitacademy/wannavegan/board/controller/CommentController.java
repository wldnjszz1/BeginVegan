package com.bitacademy.wannavegan.board.controller;

import com.bitacademy.wannavegan.board.service.CommentService;
import com.bitacademy.wannavegan.board.vo.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.awt.*;
import java.util.HashMap;
import java.util.List;

import static java.lang.System.console;


@RestController
@RequestMapping(value="/board/comments")
@SessionAttributes({"loginVO"})
public class CommentController {

    @Autowired
    private CommentService service;

    @RequestMapping(value = "/list", method = RequestMethod.GET) //댓글 리스트
    @ResponseBody
    private List<CommentVO> commentList(@RequestParam int bno) throws Exception{
        HashMap<String, Object> hashMap = service.list(bno);
        List<CommentVO> comments = (List) hashMap.get("commentList");
        //System.out.println(comments);
        return comments;
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST) //댓글 작성
    @ResponseStatus(value= HttpStatus.OK)
    public String commentInsert(@ModelAttribute CommentVO vo, HttpSession session) throws Exception {
        String number =  Integer.toString(vo.getBno());
        service.create(vo);

        System.out.println(vo);
        return "redirect:/board/"+number;
    }

    @RequestMapping("/update") //댓글 수정
    @ResponseBody
    private void commentUpdate(@ModelAttribute CommentVO vo , @RequestParam int cno, @RequestParam String content) throws Exception{

        System.out.println(vo);

        CommentVO comment = new CommentVO();

        comment.setCno(cno);
        comment.setContent(content);
        service.update(vo);
    }

    @RequestMapping("/delete/{cno}") //댓글 삭제
    @ResponseBody
    private void commentDelete(@PathVariable int cno) throws Exception{

        service.delete(cno);
    }

}