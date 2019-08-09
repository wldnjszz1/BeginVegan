package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.mapper.CommentMapper;
import com.bitacademy.wannavegan.board.vo.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<CommentVO> selectAllComment() {

        List<CommentVO> commentVOList = commentMapper.selectComment();

        return commentVOList;
    }

    @Override
    public void insertComment(CommentVO commentVO) {
        commentMapper.commentInsert(commentVO);
    }

    @Override
    public void updateComment(CommentVO commentVO) {
        commentMapper.commentUpdate(commentVO);
    }

    @Override
    public void deleteComment(int board_id) {
        commentMapper.commentDelete(board_id);
    }
}
