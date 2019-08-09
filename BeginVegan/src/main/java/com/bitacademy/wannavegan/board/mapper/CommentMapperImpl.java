package com.bitacademy.wannavegan.board.mapper;

import com.bitacademy.wannavegan.board.vo.CommentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentMapperImpl implements CommentMapper {

    @Autowired
    private SqlSessionTemplate session;

    @Override
    public List<CommentVO> selectComment() {

        List<CommentVO> commentVO = session.selectList("commentMapper.selectComment");

        return commentVO;
    }

    @Override
    public void commentInsert(CommentVO commentVO) {
        session.insert("commentMapper.commentInsert", commentVO);
    }

    @Override
    public void commentUpdate(CommentVO commentVO) {
        session.update("commentMapper.commentUpdate", commentVO);
    }

    @Override
    public void commentDelete(int board_id) {
        session.delete("commentMapper.commentDelete", board_id);
    }
}
