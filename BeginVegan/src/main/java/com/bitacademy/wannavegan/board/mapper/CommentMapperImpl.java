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
    public int commentCount() throws Exception {
        int commentCount = session.selectOne("comment.mapper.CommentMapper.commentCount");
        return commentCount;
    }

    @Override
    public List<CommentVO> commentList(int id) throws Exception {
        List<CommentVO> commentList = session.selectList("comment.mapper.CommentMapper.commentList", id);
        return commentList;
    }

    @Override
    public void commentInsert(CommentVO comment) throws Exception {
        session.insert("comment.mapper.CommentMapper.commentInsert", comment);
    }

    @Override
    public void commentUpdate(CommentVO comment) throws Exception {
        session.update("comment.mapper.CommentMapper.commentUpdate", comment);
    }

    @Override
    public void commentDelete(int cno) throws Exception {
        session.delete("comment.mapper.CommentMapper.commentDelete", cno);
    }
}
