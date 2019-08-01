package com.bitacademy.wannavegan.askService;

import com.bitacademy.wannavegan.askMapper.AskMapper;
import com.bitacademy.wannavegan.askVO.AskVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AskServiceImpl implements AskService {

    @Autowired
    private AskMapper askMapper;

    @Override
    public List<AskVO> selectAllBoard() {
        List<AskVO> askBoardList = askMapper.selectAll();
        return askBoardList;
    }
}
