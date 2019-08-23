package com.bitacademy.wannavegan.dining.controller;
import com.bitacademy.wannavegan.dining.service.DiningCommentService;
import com.bitacademy.wannavegan.dining.service.DiningService;
import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;

@Controller
@SessionAttributes({"loginVO"})
public class DiningController {
    @Autowired
    private DiningService service;
    private DiningCommentService commentService;

    public DiningController(DiningCommentService commentService) {
        this.commentService = commentService;
    }

    @GetMapping("/dining")
    public ModelAndView list() {
        List<DiningVO> diningList = service.selectAllDining();
        ModelAndView mav = new ModelAndView("dining/list");
        mav.addObject("diningList", diningList);
        mav.addObject("commentVO", new DiningCommentVO());
        return mav;
    }

    @GetMapping("/dining/hihi")
    public String lista() {
        return "dining/hihi";
    }

    @RequestMapping(value = "/dining/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable("id") int id) throws Exception {
        DiningVO dining = service.detailDiningByID(id);
        HashMap<String,Object> hashMap = commentService.list(id);
        double avg = (double) hashMap.get("avg");
        dining.setScore(avg);
        HashMap<String,Object> us = new HashMap<>();
        us.put("id", id);
        us.put("score", avg);
        service.updateScore(us);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("dining/detail");
        mav.addObject("dining", dining);
        return mav;
    }
}
