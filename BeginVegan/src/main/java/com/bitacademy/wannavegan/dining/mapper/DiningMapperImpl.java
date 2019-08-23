package com.bitacademy.wannavegan.dining.mapper;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class DiningMapperImpl implements DiningMapper{
    @Autowired
    private SqlSessionTemplate session;

    @Override
    public List<DiningVO> selectAll() {
        List<DiningVO> diningList = session.selectList("dining.mapper.DiningMapper.selectAll");
        return diningList;
    }

    public DiningVO selectByID(int id) {
        DiningVO dining = session.selectOne("dining.mapper.DiningMapper.selectByID", id);
        return dining;
    }

    @Override
    public void updateScore(HashMap<String, Object> map) {
        session.update("dining.mapper.DiningMapper.updateScore", map);
    }
}
