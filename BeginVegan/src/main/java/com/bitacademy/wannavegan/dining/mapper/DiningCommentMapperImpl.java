package com.bitacademy.wannavegan.dining.mapper;

import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DiningCommentMapperImpl implements DiningCommentMapper {

    @Autowired
    private SqlSessionTemplate session;

    @Override
    public int commentCount() throws Exception {
        int commentCount = session.selectOne("diningComments.mapper.CommentsMapper.commentCount");
        return commentCount;
    }

    @Override
    public List<DiningCommentVO> commentList(int bno) throws Exception {
        List<DiningCommentVO> commentList = session.selectList("diningComments.mapper.CommentsMapper.commentList", bno);
        return commentList;
    }

    @Override
    public void commentInsert(DiningCommentVO comment) throws Exception {
        System.out.println(comment);
        session.insert("diningComments.mapper.CommentsMapper.commentInsert", comment);

    }

    @Override
    public void commentUpdate(DiningCommentVO comment) throws Exception {
        System.out.println("comment mapper의 "+comment);
        session.update("diningComments.mapper.CommentsMapper.commentUpdate", comment);
    }

    @Override
    public void commentDelete(int cno) throws Exception {
        session.delete("diningComments.mapper.CommentsMapper.commentDelete", cno);
    }
}
