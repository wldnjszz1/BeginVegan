package com.bitacademy.wannavegan.dining.service;

import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;

import java.util.HashMap;
import java.util.List;

public interface DiningCommentService {
    // 댓글 목록
    public HashMap<String,Object> list(int bno) throws Exception;
    // 댓글 입력
    public void create(DiningCommentVO vo) throws Exception;
    // 댓글 수정
    public void update(DiningCommentVO vo) throws Exception;
    // 댓글 삭제
    public void delete(int cno) throws Exception;
}
