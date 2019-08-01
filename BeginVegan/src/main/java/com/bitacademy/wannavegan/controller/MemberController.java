package com.bitacademy.wannavegan.controller;

import com.bitacademy.wannavegan.service.MemberService;
import com.bitacademy.wannavegan.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@Controller
public class MemberController {

    @Autowired
    private MemberService service;

    @RequestMapping(value="/join", method= RequestMethod.POST)
    public String join(@Valid MemberVO member) {
        service.insertMember(member);

        // TO DO : 로그인 화면 만들어지면 로그인으로 화면으로 redirect하기
        return "redirect:/";
    }
}
