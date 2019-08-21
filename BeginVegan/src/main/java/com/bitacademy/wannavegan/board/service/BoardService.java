package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.vo.BoardVO;
import com.bitacademy.wannavegan.board.vo.FileVO;


import java.util.List;

public interface BoardService {
    List<BoardVO> selectAllBoard();

    int insertBoard(BoardVO boardVO);
    int getMaxBoardId();
    BoardVO selectByIdBoard(int id);

    void deleteByIdBoard(int id);

    void updateByIdBoard(BoardVO boardVO);

    void fileInsertService(FileVO file) throws Exception;

    public FileVO fileDetailService(int bno) throws Exception;
}
