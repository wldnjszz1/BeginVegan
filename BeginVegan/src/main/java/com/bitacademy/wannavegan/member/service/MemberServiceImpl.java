package com.bitacademy.wannavegan.member.service;

import com.bitacademy.wannavegan.member.mapper.MemberMapper;
import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
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
}
