package com.bitacademy.wannavegan.ask.service;

import com.bitacademy.wannavegan.ask.mapper.AskMapper;
import com.bitacademy.wannavegan.ask.vo.AskVO;
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

    @Override
    public void insertBoard(AskVO askVO) {
        askMapper.insert(askVO);
    }

    @Override
    public AskVO selectByIdBoard(int id) {
        AskVO askid = askMapper.selectById(id);
        return askid;
    }

    @Override
    public void deleteByIdBoard(int id) {
        askMapper.delete(id);
    }

    @Override
    public void updateByIdBoard(AskVO askVO) {
        askMapper.update(askVO);
    }
}
