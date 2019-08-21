package com.bitacademy.wannavegan.dining.service;

import com.bitacademy.wannavegan.dining.mapper.DiningCommentMapper;
import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiningCommentServiceImpl implements DiningCommentService {

    @Autowired
    private DiningCommentMapper mapper;
    private DiningCommentVO vo;

    @Override
    public List<DiningCommentVO> list(int bno) throws Exception {
        List<DiningCommentVO> commentList = mapper.commentList(bno);
        return commentList;
    }

    @Override
    public void create(DiningCommentVO vo) throws Exception {
        mapper.commentInsert(vo);
    }

    @Override
    public void update(DiningCommentVO vo) throws Exception{
        mapper.commentUpdate(vo);
    }

    @Override
    public void delete(int cno) throws Exception{
        mapper.commentDelete(cno);
    }
}
