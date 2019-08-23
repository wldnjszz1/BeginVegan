package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.CommentVO;

import java.util.List;

public interface CommentMapper {
    // 댓글 개수
    public int commentCount() throws Exception;

    // 댓글 목록
    public List<CommentVO> commentList(int bno) throws Exception;



    // 댓글 작성
    public void commentInsert(CommentVO comment) throws Exception;

    // 댓글 수정
    public void commentUpdate(CommentVO comment) throws Exception;

    // 댓글 삭제
    public void commentDelete(int cno) throws Exception;
}
