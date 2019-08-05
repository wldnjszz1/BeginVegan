package com.bitacademy.wannavegan.member.service;

import com.bitacademy.wannavegan.member.vo.MemberVO;

import java.util.List;

public interface MemberService {
    public void insertMember(MemberVO member);
    public List<MemberVO> showMembers();
    public void updateMember(MemberVO member);
    public void delete(int id);
}
