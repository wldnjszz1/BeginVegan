package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.mapper.BoardMapper;
import com.bitacademy.wannavegan.board.vo.BoardVO;
import com.bitacademy.wannavegan.board.vo.FileVO;
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
    public int insertBoard(BoardVO boardVO) {
        return boardMapper.insert(boardVO);
    }

    @Override
    public int getMaxBoardId() {
        return boardMapper.getMaxBoardId();
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

    @Override
    public void fileInsertService(FileVO file) throws Exception {
        boardMapper.fileInsert(file);
    }

    @Override
    public FileVO fileDetailService(int bno) throws Exception {
        return boardMapper.fileDetail(bno);
    }


}
