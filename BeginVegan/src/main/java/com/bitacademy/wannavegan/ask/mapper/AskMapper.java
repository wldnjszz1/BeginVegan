package com.bitacademy.wannavegan.ask.mapper;

import com.bitacademy.wannavegan.ask.vo.AskVO;

import java.util.List;

/*단일 데이터 접근/갱신 처리하는 역할*/

public interface AskMapper {
    /*전체 게시글 조회*/
    public List<AskVO> selectAll();

    /*글 작성*/
    public void insert(AskVO askVO);

    /*상세 게시글 조회*/
    public AskVO selectById(int id);
}
