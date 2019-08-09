package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.mapper.BoardMapper;
import com.bitacademy.wannavegan.board.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardMapper boardMapper;


    @Override
    public List<BoardVO> selectAllBoard() {

        List<BoardVO> BoardList = boardMapper.selectAll();

        return BoardList;
    }

    @Override
    public void insertBoard(BoardVO boardVO) {
        boardMapper.insert(boardVO);
    }

    @Override
    public BoardVO selectByIdBoard(int id) {
        BoardVO boardId = boardMapper.selectById(id);

        return boardId;
    }

    @Override
    public void deleteByIdBoard(int id) {
        boardMapper.delete(id);
    }

    @Override
    public void updateByIdBoard(BoardVO boardVO) {
        boardMapper.update(boardVO);
    }


}
