package com.bitacademy.wannavegan.dining.service;

import com.bitacademy.wannavegan.dining.mapper.DiningCommentMapper;
import com.bitacademy.wannavegan.dining.vo.DiningCommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;

@Service
public class DiningCommentServiceImpl implements DiningCommentService {

    @Autowired
    private DiningCommentMapper mapper;
    private DiningCommentVO vo;

    @Override
    public HashMap<String,Object> list(int bno) throws Exception {
        HashMap<String, Object> hashMap = new HashMap<>();
        List<DiningCommentVO> commentList = mapper.commentList(bno);
        hashMap.put("commentList", commentList);
        double addScore = 0;
        for(int i=0; i<commentList.size(); i++){
            addScore += commentList.get(i).getScore();
        }
        double avg = Math.round(addScore/commentList.size()*100)/100.0;
        hashMap.put("avg", avg);
        return hashMap;
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
