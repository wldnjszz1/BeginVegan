package com.bitacademy.wannavegan.mapper;

import com.bitacademy.wannavegan.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberMapperImpl implements MemberMapper {
    @Autowired
    private SqlSessionTemplate session;

    @Override
    public void insert(MemberVO member) {
        session.insert("member.dao.MemberDAO.insert", member);
    }
}
