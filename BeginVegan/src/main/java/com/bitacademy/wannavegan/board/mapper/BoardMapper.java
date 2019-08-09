package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.BoardVO;

import java.util.List;

public interface BoardMapper {
    public List<BoardVO> selectAll();
    public void insert(BoardVO boardVO);
    public BoardVO selectById(int id);
    public void delete(int id);
    public void update(BoardVO boardVO);
}
