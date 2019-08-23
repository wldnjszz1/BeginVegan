package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.vo.CommentVO;

import java.util.HashMap;
import java.util.List;

public interface CommentService {
    // 댓글 목록
    public HashMap<String,Object> list(int bno) throws Exception;
    // 댓글 입력
    public void create(CommentVO vo) throws Exception;
    // 댓글 수정
    public void update(CommentVO vo) throws Exception;
    // 댓글 삭제
    public void delete(int cno) throws Exception;

}