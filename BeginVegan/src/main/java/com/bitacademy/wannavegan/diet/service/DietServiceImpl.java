package com.bitacademy.wannavegan.diet.service;
import com.bitacademy.wannavegan.diet.mapper.DietMapper;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DietServiceImpl implements DietService {
    @Autowired
    private DietMapper dietMapper;

    @Override //없어도 eclipse에선 됬음
    public List<DietVO> selectAllDiet() {
        List<DietVO> dietList = dietMapper.selectAll();
        return dietList;
    }

    @Override
    public void insertDiet(DietVO diet){
        dietMapper.insert(diet);
    }

    @Override
    public DietVO detailDietByID(int id) {
        DietVO diet = dietMapper.selectByID(id);
        return diet;
    }

    @Override
    public void deleteDietByID(int id) {
        dietMapper.delete(id);
    }
}
