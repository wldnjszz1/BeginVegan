package com.bitacademy.wannavegan.dining.service;

import com.bitacademy.wannavegan.dining.mapper.CommentMapper;
import com.bitacademy.wannavegan.dining.vo.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper mapper;
    private CommentVO vo;

    @Override
    public List<CommentVO> list(int bno) throws Exception {
        List<CommentVO> commentList = mapper.commentList(bno);
        return commentList;
    }

    @Override
    public void create(CommentVO vo) throws Exception {
        mapper.commentInsert(vo);
    }

    @Override
    public void update(CommentVO vo) throws Exception{
        mapper.commentUpdate(vo);
    }

    @Override
    public void delete(int cno) throws Exception{
        mapper.commentDelete(cno);
    }
}
