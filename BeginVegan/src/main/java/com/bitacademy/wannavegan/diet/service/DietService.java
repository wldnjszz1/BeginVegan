package com.bitacademy.wannavegan.diet.service;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import java.util.List;

public interface DietService {
    List<DietVO> selectAllDiet();
    void insertDiet(DietVO diet);
    DietVO detailDietByID(int id);
    void deleteDietByID(int id);
}
