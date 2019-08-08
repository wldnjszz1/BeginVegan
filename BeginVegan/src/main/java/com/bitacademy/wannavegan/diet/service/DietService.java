package com.bitacademy.wannavegan.diet.service;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import com.bitacademy.wannavegan.diet.vo.FileVO;

import java.util.List;

public interface DietService {
    List<DietVO> selectAllDiet();
    void insertDiet(DietVO diet);
    DietVO detailDietByID(int id);
    void deleteDietByID(int id);
    void updateDietByID(DietVO diet);
    void fileInsertService(FileVO file) throws Exception;

}
