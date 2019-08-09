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

    @Override
    public void update(MemberVO member) {
        session.update("member.mapper.MemberMapper.update", member);
    }

    @Override
    public void delete(int id) {
        session.delete("member.mapper.MemberMapper.delete", id);
    }

    @Override
    public MemberVO login(MemberVO member) {
        MemberVO loginVO = session.selectOne("member.mapper.MemberMapper.login", member);
        return loginVO;
    }

    @Override
    public void updateInfo(MemberVO member) {
        session.update("member.mapper.MemberMapper.updateInfo", member);
    }

    @Override
    public MemberVO getInfo(int id) {
        MemberVO member = session.selectOne("member.mapper.MemberMapper.getInfo", id);
        return member;
    }
}
