package com.bitacademy.wannavegan.dining.controller;

import com.bitacademy.wannavegan.dining.service.DiningCommentService;
import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value="/dining/comments")
@SessionAttributes({"loginVO"})
public class DiningCommentController {

    @Autowired
    private DiningCommentService service;

    @RequestMapping(value = "/list", method = RequestMethod.GET) //댓글 리스트
    @ResponseBody
    private List<DiningCommentVO> commentList(@RequestParam int bno) throws Exception{
        HashMap<String, Object> hashMap = service.list(bno);
        List<DiningCommentVO> comments = (List) hashMap.get("commentList");
        return comments;
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST) //댓글 작성
    @ResponseStatus(value= HttpStatus.OK)
    public String commentInsert(@ModelAttribute DiningCommentVO vo, HttpSession session) throws Exception {
//        String userId = (String) session.getAttribute("loginVO");
//        vo.setWriter(userId);
        String number =  Integer.toString(vo.getBno());
        service.create(vo);
        return "redirect:/dining/"+number;
    }

    @RequestMapping("/update") //댓글 수정
    @ResponseBody
    private void commentUpdate(@RequestParam int cno, @RequestParam String content, @RequestParam int score) throws Exception{

        DiningCommentVO comment = new DiningCommentVO();
        comment.setCno(cno);
        comment.setContent(content);
        comment.setScore(score);

        service.update(comment);
    }

    @RequestMapping("/delete/{cno}") //댓글 삭제
    @ResponseBody
    private void commentDelete(@PathVariable int cno) throws Exception{

        service.delete(cno);
    }

}
