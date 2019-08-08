package com.bitacademy.wannavegan.diet.mapper;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import com.bitacademy.wannavegan.diet.vo.FileVO;

import java.util.List;

public interface DietMapper {
    public List<DietVO> selectAll();
    public void insert(DietVO diet);
    public void fileInsert(FileVO file) throws Exception;
    public DietVO selectByID(int id);
    public void delete(int id);
    public void update(DietVO diet);


}
