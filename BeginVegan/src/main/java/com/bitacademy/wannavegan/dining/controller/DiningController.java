package com.bitacademy.wannavegan.dining.controller;
import com.bitacademy.wannavegan.dining.service.DiningService;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class DiningController {
    @Autowired
    private DiningService service;

    @GetMapping("/dining")
    public ModelAndView list() {
        List<DiningVO> diningList = service.selectAllDining();
        ModelAndView mav = new ModelAndView("dining/list");
        mav.addObject("diningList", diningList);
        return mav;
    }

    @RequestMapping(value = "/dining/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable("id") int id){
        DiningVO dining = service.detailDiningByID(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("dining/detail");
        mav.addObject("dining", dining);
        return mav;
    }
}