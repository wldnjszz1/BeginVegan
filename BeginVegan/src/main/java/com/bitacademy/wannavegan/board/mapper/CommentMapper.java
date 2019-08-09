package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.CommentVO;

import java.util.List;

public interface CommentMapper {
    public List<CommentVO> selectComment();
    public void commentInsert(CommentVO commentVO);
    public void commentUpdate(CommentVO commentVO);
    public void commentDelete(int board_id);
}
