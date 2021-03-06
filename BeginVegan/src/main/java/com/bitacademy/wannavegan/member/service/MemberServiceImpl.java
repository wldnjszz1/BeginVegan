package com.bitacademy.wannavegan.member.service;

import com.bitacademy.wannavegan.member.mapper.MemberMapper;
import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    private MemberMapper mapper;

    @Override
    public void insertMember(MemberVO member) {
        mapper.insert(member);
    }

    @Override
    public List<MemberVO> showMembers() {
        List<MemberVO> members = mapper.selectAll();
        return members;
    }

    @Override
    public void updateMember(MemberVO member) {
        mapper.update(member);
    }

    @Override
    public void delete(int id) {
        mapper.delete(id);
    }

    @Override
    public MemberVO login(MemberVO member) {
        MemberVO loginVO = mapper.login(member);
        if (loginVO != null){
            loginVO.setType(loginVO.getType().trim());
        } else{
            System.out.println("login Service가 null");
        }
        return loginVO;
    }

    @Override
    public void updateInfo(MemberVO member) {
        mapper.updateInfo(member);
    }

    @Override
    public MemberVO getInfo(int id) {
        MemberVO member = mapper.getInfo(id);
        return member;
    }
}
