package com.bitacademy.wannavegan.service;

import com.bitacademy.wannavegan.mapper.MemberMapper;
import com.bitacademy.wannavegan.mapper.MemberMapperImpl;
import com.bitacademy.wannavegan.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    private MemberMapper mapper;

    @Override
    public void insertMember(MemberVO member) {
        mapper.insert(member);
    }
}
