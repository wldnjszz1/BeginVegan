package com.bitacademy.wannavegan.dining.mapper;

import com.bitacademy.wannavegan.dining.vo.CommentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Repository
public class CommentMapperImpl implements CommentMapper {

    @Autowired
    private SqlSessionTemplate session;

    @Override
    public int commentCount() throws Exception {
        int commentCount = session.selectOne("diningComments.mapper.CommentsMapper.commentCount");
        return commentCount;
    }

    @Override
    public List<CommentVO> commentList(int bno) throws Exception {
        List<CommentVO> commentList = session.selectList("diningComments.mapper.CommentsMapper.commentList", bno);
        return commentList;
    }

    @Override
    public void commentInsert(CommentVO comment) throws Exception {
        session.insert("diningComments.mapper.CommentsMapper.commentInsert");
    }

    @Override
    public void commentUpdate(CommentVO comment) throws Exception {
        session.update("diningComments.mapper.CommentsMapper.commentUpdate");
    }

    @Override
    public void commentDelete(int cno) throws Exception {
        session.delete("diningComments.mapper.CommentsMapper.commentDelete", cno);
    }
}
