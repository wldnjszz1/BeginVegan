package com.bitacademy.wannavegan.ask.service;

import com.bitacademy.wannavegan.ask.vo.AskVO;

import java.util.List;

public interface AskService {
    List<AskVO> selectAllBoard();
    void insertBoard(AskVO askVO);
}
