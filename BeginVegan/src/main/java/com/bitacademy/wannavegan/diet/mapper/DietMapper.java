package com.bitacademy.wannavegan.diet.mapper;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import java.util.List;

public interface DietMapper {
    public List<DietVO> selectAll();
    public void insert(DietVO diet);
    public DietVO selectByID(int id);
    public void delete(int id);
}
