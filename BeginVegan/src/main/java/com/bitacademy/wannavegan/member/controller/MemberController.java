package com.bitacademy.wannavegan.member.controller;

import com.bitacademy.wannavegan.member.service.MemberService;
import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import sun.awt.ModalityListener;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@SessionAttributes({"loginVO"})
@Controller
public class MemberController {

    @Autowired
    private MemberService service;

    @GetMapping({"/"})
    public String home() {
        return "index";
    }

    @GetMapping({"/about"})
    public String about() {
        return "about";
    }

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
        return "redirect:/login";
    }

    @GetMapping({"/manageMember"})
    public ModelAndView memberList(){
        List<MemberVO> members = service.showMembers();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Member/modify");
        mav.addObject("members",members);
        return mav;
    }

    @PostMapping({"/manageMember"})
    public String memberUpdate(@Valid  MemberVO member, BindingResult result){
        if(result.hasErrors()){
            System.out.println("오류발생");
            return "Member/modify";
        }
        service.updateMember(member);
        return "redirect:/manageMember";
    }


    @RequestMapping(value="manageMember/{id}" ,method=RequestMethod.DELETE)
    public @ResponseBody String memberDelete(@PathVariable("id") int id){
        service.delete(id);
        return "redirect:/manageMember";
    }


    @GetMapping({"/login"})
    public String loginForm() {
        return "Member/login";
    }

    @PostMapping({"/login"})
    public String login(MemberVO member, Model model, HttpServletRequest request){
        MemberVO loginVO = service.login(member);
        if(loginVO == null){
            model.addAttribute("msg", "아이디 또는 패스워드가 잘못되었습니다");
            return "Member/login";
        }else{
            model.addAttribute("loginVO", loginVO);
            System.out.println(model);
            return "index";
        }
    }

    @GetMapping("/logout")
    public String logout(SessionStatus status){
        status.setComplete();
        return "redirect:/";
    }


    @GetMapping("/mypage")
    public ModelAndView mypage(@ModelAttribute("loginVO") MemberVO member, Model model){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Member/mypage");
        mav.addObject("loginVO",member);
        return mav;
    }


    @RequestMapping(value = "/mypage", method = RequestMethod.POST)
    public String mypageUpdate(@ModelAttribute("loginVO") MemberVO member, SessionStatus sessionStatus, Model model) throws Exception {
        service.updateInfo(member);
        return "redirect:/mypage";
    }

    @ModelAttribute("loginVO")
    public MemberVO setEmptyMember() {
        return new MemberVO();
    }

}
