package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.BoardVO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardMapperImpl implements BoardMapper{

    @Autowired
    private SqlSessionTemplate session;

    @Override
    public List<BoardVO> selectAll() {

        List<BoardVO> boardVO = session.selectList("boardMapper.selectAll");

        return boardVO;
    }

    @Override
    public void insert(BoardVO boardVO) {
        session.insert("boardMapper.insert",boardVO);

    }

    @Override
    public BoardVO selectById(int id) {
        BoardVO boardId = session.selectOne("boardMapper.selectById", id);
        return boardId;
    }

    @Override
    public void delete(int id) {
        session.delete("boardMapper.deleteById", id);
    }

    @Override
    public void update(BoardVO boardVO) {
        session.update("boardMapper.update", boardVO);
    }


}
