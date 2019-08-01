package com.bitacademy.wannavegan.askMapper;

import com.bitacademy.wannavegan.askVO.AskVO;

import java.util.List;

public interface AskMapper {
    /*전체 게시글 조회*/
    public List<AskVO> selectAll();
}
