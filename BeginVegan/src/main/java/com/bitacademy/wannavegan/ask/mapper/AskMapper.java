package com.bitacademy.wannavegan.ask.mapper;

import com.bitacademy.wannavegan.ask.vo.AskVO;

import java.util.List;

public interface AskMapper {
    /*전체 게시글 조회*/
    public List<AskVO> selectAll();

    /*글 작성*/
    public void insert(AskVO askVO);

    /*상세 게시글 조회*/
    public AskVO selectById(int id);

    /*게시글 삭제, 삭제할 게시글 번호*/
    public void delete(int id);

    /*게시글 수정, 수정할 게시글 번호*/
    public void update(AskVO askVO);

    /*답글 작성*/
    public void reply(AskVO askVO);
}
