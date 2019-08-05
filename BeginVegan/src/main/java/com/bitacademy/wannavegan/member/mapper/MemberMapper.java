package com.bitacademy.wannavegan.member.mapper;

import com.bitacademy.wannavegan.member.vo.MemberVO;

import java.util.List;

public interface MemberMapper {
    public void insert(MemberVO memebr);
    public List<MemberVO> selectAll();
    public void update(MemberVO member);
    public void delete(int id);
}
