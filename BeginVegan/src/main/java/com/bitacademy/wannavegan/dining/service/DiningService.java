package com.bitacademy.wannavegan.dining.service;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import java.util.List;

public interface DiningService {
    List<DiningVO> selectAllDining();
    DiningVO detailDiningByID(int id);
}
