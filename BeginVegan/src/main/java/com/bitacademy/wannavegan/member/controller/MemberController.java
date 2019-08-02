package com.bitacademy.wannavegan.member.controller;

import com.bitacademy.wannavegan.member.service.MemberService;
import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MemberController {

    @Autowired
    private MemberService service;

    @GetMapping({"/join"})
    public String joinForm(Model model){
        MemberVO member = new MemberVO();
        model.addAttribute("memberVO", member);
        return "Member/register";
    }


    @PostMapping({"/join"})
    public String join(@Valid MemberVO member, BindingResult result) {
        if(result.hasErrors()){
            System.out.println("오류발생");
            return "Member/register";
        }
        service.insertMember(member);
        // TO DO : 로그인 화면 만들어지면 로그인으로 화면으로 redirect하기
        return "redirect:/";
    }

    @GetMapping({"/memberList"})
    public ModelAndView memberList(){
        List<MemberVO> members = service.showMembers();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Member/memberList");
        mav.addObject("members",members);
        return mav;
    }


}
