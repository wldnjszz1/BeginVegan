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

import javax.servlet.http.HttpServletRequest;
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

//     TO DO : member delete 구현하기
    @RequestMapping(value="manageMember/{id}" ,method=RequestMethod.DELETE)
    public @ResponseBody String memberDelete(@PathVariable("id") int id){
        service.delete(id);
        System.out.println(id);
        return "redirect:/manageMember";
    }

//    @RequestMapping(value = "manageMember/{id}", method = RequestMethod.DELETE)
//    public ResponseEntity<String> remove(@PathVariable("id") int id) {
//        System.out.println(id);
//        ResponseEntity<String> entity = null;
//        try {
//            service.delete(id);
//            entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//        } catch (Exception e) {
//            e.printStackTrace();
//            entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
//        }
//        return entity;
//    }

    @GetMapping({"/login"})
    public String loginForm() {
        return "Member/login";
    }

    @PostMapping({"/login"})
    public String login(MemberVO member, Model model, HttpServletRequest request){
        MemberVO loginVO = service.login(member);
        if(loginVO == null){
            model.addAttribute("msg", "아이디 또는 패스워드가 잘못되었습니다");
            System.out.println(model);
            return "Member/login";
        }else{
            model.addAttribute("loginVO", loginVO);
            return "index";
        }
    }

    @GetMapping("/logout")
    public String logout(SessionStatus status){
        status.setComplete();
        return "redirect:/";
    }

    // TO DO : 유저 정보 받아와서 글 띄워주기
    @GetMapping("/mypage")
    public String mypage(){
        return "Member/mypage";
    }

    @PostMapping("/mypage")
    public String mypageUpdate(@Valid MemberVO member, BindingResult result){
        if(result.hasErrors()){
            System.out.println("오류발생");
            return "Member/mypage";
        }
        service.updateInfo(member);
        System.out.println(member);
        return "redirect:/mypage";
    }

}
