package com.bitacademy.wannavegan.dining.service;
import com.bitacademy.wannavegan.dining.mapper.DiningMapper;
import com.bitacademy.wannavegan.dining.vo.DiningVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class DiningServiceImpl implements DiningService {
    @Autowired
    private DiningMapper diningMapper;
    private DiningVO dining;

    @Override
    public List<DiningVO> selectAllDining() {
        List<DiningVO> diningList = diningMapper.selectAll();
        return diningList;
    }

    @Override
    public DiningVO detailDiningByID(int id) {
        DiningVO dining = diningMapper.selectByID(id);
        return dining;
    }

    @Override
    public void updateScore(HashMap<String, Object> map) {
        diningMapper.updateScore(map);
    }
}
