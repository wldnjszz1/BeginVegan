package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.vo.BoardVO;


import java.util.List;

public interface BoardService {
    List<BoardVO> selectAllBoard();
    void insertBoard(BoardVO boardVO);
    BoardVO selectByIdBoard(int id);
    void deleteByIdBoard(int id);
    void updateByIdBoard(BoardVO boardVO);
}
