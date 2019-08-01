package com.bitacademy.wannavegan.askController;

import com.bitacademy.wannavegan.askService.AskService;
import com.bitacademy.wannavegan.askVO.AskVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AskController {

    @Autowired
    private AskService askService;

    @RequestMapping("/askBoard")
    public ModelAndView list(){
        List<AskVO> askBoardList = askService.selectAllBoard();

        ModelAndView mav = new ModelAndView("askBoard/askboard");
        mav.addObject("askBoardList", askBoardList);

        return mav;
    }

}
