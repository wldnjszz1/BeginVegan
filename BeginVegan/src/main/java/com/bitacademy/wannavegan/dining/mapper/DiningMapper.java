package com.bitacademy.wannavegan.dining.mapper;
import com.bitacademy.wannavegan.dining.vo.DiningVO;

import java.util.HashMap;
import java.util.List;

public interface DiningMapper {
    public List<DiningVO> selectAll();
    public DiningVO selectByID(int id);
    public void updateScore(HashMap<String, Object> map);
}
