package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.BoardVO;
import com.bitacademy.wannavegan.board.vo.FileVO;

import java.util.List;

public interface BoardMapper {
    public List<BoardVO> selectAll();
    public int insert(BoardVO boardVO);
    public int getMaxBoardId();
    public BoardVO selectById(int id);
    public void delete(int id);
    public void update(BoardVO boardVO);
    public void fileInsert(FileVO file) throws Exception;
    public FileVO fileDetail(int bno) throws Exception;

}
