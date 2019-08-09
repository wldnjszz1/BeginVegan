package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.vo.CommentVO;

import java.util.List;

public interface CommentService {
    List<CommentVO> selectAllComment();
    void insertComment(CommentVO commentVO);
    void updateComment(CommentVO commentVO);
    void deleteComment(int board_id);
}
