package com.bitacademy.wannavegan.diet.controller;
import com.bitacademy.wannavegan.diet.service.DietService;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DietController {
    @Autowired
    private DietService service;

    @RequestMapping("/diet")
    public ModelAndView list() {
        List<DietVO> dietList = service.selectAllDiet();
        ModelAndView mav = new ModelAndView("diet/list");
        mav.addObject("dietList", dietList);
        return mav;
    }

    @RequestMapping(value= "/diet/write", method= RequestMethod.GET)
    public String writeForm() {
        return "diet/write";
    }

    @RequestMapping(value = "/diet/write", method=RequestMethod.POST)
    public String write(DietVO diet){
        service.insertDiet(diet);
        return "redirect:/diet";
    }

    @RequestMapping(value = "/diet/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable("id") int id){
        DietVO diet = service.detailDietByID(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("diet/detail");
        mav.addObject("diet",diet);
        return mav;
    }

    @RequestMapping("/diet/remove/{id}")
    public String removeBoard(@PathVariable("id") int id) {
        service.deleteDietByID(id);
        return "redirect:/diet";
    }

}
