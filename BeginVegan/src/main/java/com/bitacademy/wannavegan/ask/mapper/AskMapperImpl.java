package com.bitacademy.wannavegan.ask.mapper;

import com.bitacademy.wannavegan.ask.vo.AskVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/*Spring boot에서 Mapper는 DAO랑 같은 역할*/

@Repository
public class AskMapperImpl implements AskMapper {

    @Autowired
    private SqlSessionTemplate session;

    @Override
    public List<AskVO> selectAll() {

        List<AskVO> askVO = session.selectList("askMapper.selectAll");

        return askVO;
    }

    @Override
    public void insert(AskVO askVO) {
        session.insert("askMapper.insert", askVO);
    }

    @Override
    public AskVO selectById(int id) {
        AskVO askId = session.selectOne("askMapper.selectById", id);
        return askId;
    }

    @Override
    public void delete(int id) {
        session.delete("askMapper.deleteById", id);
    }

    @Override
    public void update(AskVO askVO) {
        session.update("askMapper.update", askVO);
    }

    @Override
    public void reply(AskVO askVO) {
        session.update("askMapper.replyUpdate", askVO);
        session.insert("askMapper.replyInsert", askVO);
    }
}
