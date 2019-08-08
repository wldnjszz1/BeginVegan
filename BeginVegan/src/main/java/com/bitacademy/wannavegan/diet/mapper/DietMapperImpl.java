package com.bitacademy.wannavegan.diet.mapper;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import com.bitacademy.wannavegan.diet.vo.FileVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class DietMapperImpl implements DietMapper {
    @Autowired
    private SqlSessionTemplate session;

    public List<DietVO> selectAll() {
        List<DietVO> dietList = session.selectList("diet.mapper.DietMapper.selectAll");
        return dietList;
    }

    public void insert(DietVO diet){
        session.insert("diet.mapper.DietMapper.insert", diet);
    }


    public void fileInsert(FileVO file) throws Exception {
        session.insert("diet.mapper.DietMapper.fileInsert", file);
    }

    public DietVO selectByID(int id) {
        DietVO diet = session.selectOne("diet.mapper.DietMapper.selectByID", id);
        return diet;
    }

    @Override
    public void delete(int id) {
        session.delete("diet.mapper.DietMapper.deleteByID", id);
    }

    @Override
    public void update(DietVO diet) {
        session.update("diet.mapper.DietMapper.updateByID", diet);
    }



}
