package com.bitacademy.wannavegan.dining.mapper;

import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;

import java.util.List;

public interface DiningCommentMapper {

    // 댓글 개수
    public int commentCount() throws Exception;

    // 댓글 목록
    public List<DiningCommentVO> commentList(int bno) throws Exception;

    // 댓글 작성
    public void commentInsert(DiningCommentVO comment) throws Exception;

    // 댓글 수정
    public void commentUpdate(DiningCommentVO comment) throws Exception;

    // 댓글 삭제
    public void commentDelete(int cno) throws Exception;

}
