package com.bitacademy.wannavegan.ask.service;

import com.bitacademy.wannavegan.ask.vo.AskVO;

import java.util.List;

/*여러 DAO의 데이터를 호출하여 여러번의 데이터 접근/갱신을 하며
그렇게 읽은 데이터에 대한 비즈니스 로직을 수행하고,
하나의(혹은 여러개의) 트랜잭션으로 묶음*/

public interface AskService {

    List<AskVO> selectAllBoard();
    void insertBoard(AskVO askVO);
    AskVO selectByIdBoard(int id);
}
