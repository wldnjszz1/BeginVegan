package com.bitacademy.wannavegan.askService;

import com.bitacademy.wannavegan.askVO.AskVO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface AskService {
    List<AskVO> selectAllBoard();
}
