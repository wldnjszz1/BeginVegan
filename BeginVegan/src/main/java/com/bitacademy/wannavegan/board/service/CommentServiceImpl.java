package com.bitacademy.wannavegan.board.service;

import com.bitacademy.wannavegan.board.mapper.CommentMapper;
import com.bitacademy.wannavegan.board.vo.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper mapper;

    @Override
    public HashMap<String,Object> list(int bno) throws Exception {
        HashMap<String, Object> hashMap = new HashMap<>();
        List<CommentVO> commentList = mapper.commentList(bno);
        hashMap.put("commentList", commentList);

        return hashMap;
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