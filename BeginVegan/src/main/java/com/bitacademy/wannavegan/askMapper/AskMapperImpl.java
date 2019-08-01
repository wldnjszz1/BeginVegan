package com.bitacademy.wannavegan.askMapper;

import com.bitacademy.wannavegan.askVO.AskVO;
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
}
