package com.bitacademy.wannavegan.member.mapper;

import com.bitacademy.wannavegan.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberMapperImpl implements MemberMapper {
    @Autowired
    private SqlSessionTemplate session;

    @Override
    public void insert(MemberVO member) {
        session.insert("member.mapper.MemberMapper.insert", member);
    }

    @Override
    public List<MemberVO> selectAll() {
        List<MemberVO> members = session.selectList("member.mapper.MemberMapper.selectAll");
        return members;
    }
}
