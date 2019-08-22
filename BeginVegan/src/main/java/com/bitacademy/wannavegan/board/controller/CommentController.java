package com.bitacademy.wannavegan.board.controller;

import com.bitacademy.wannavegan.board.service.CommentService;
import com.bitacademy.wannavegan.board.vo.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping(value="/comment")
public class CommentController {

    @Autowired
    private CommentService service;

    @RequestMapping(value = "/list", method = RequestMethod.GET) //댓글 리스트
    @ResponseBody
    private List<CommentVO> commentList(@RequestParam int bno) throws Exception{
        return service.list(bno);
    }

    @RequestMapping("/insert") //댓글 작성
    @ResponseBody
    public void commentInsert(@ModelAttribute CommentVO vo, HttpSession session) throws Exception {
        service.create(vo);
    }

    @RequestMapping("/update") //댓글 수정
    @ResponseBody
    private void commentUpdate(@RequestParam int cno, @RequestParam String content) throws Exception{

        CommentVO comment = new CommentVO();
        comment.setCno(cno);
        comment.setContent(content);

        service.update(comment);
    }

    @RequestMapping("/delete/{cno}") //댓글 삭제
    @ResponseBody
    private void commentDelete(@PathVariable int cno) throws Exception{

        service.delete(cno);
    }
}
