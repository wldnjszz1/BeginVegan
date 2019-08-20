package com.bitacademy.wannavegan.dining.mapper;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
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
}
