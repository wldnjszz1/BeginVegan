package com.bitacademy.wannavegan.board.controller;

import com.bitacademy.wannavegan.board.service.BoardService;
import com.bitacademy.wannavegan.board.service.CommentService;
import com.bitacademy.wannavegan.board.vo.BoardVO;
import com.bitacademy.wannavegan.board.vo.CommentVO;
import com.bitacademy.wannavegan.board.vo.FileVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;


@SessionAttributes({"loginVO"})
@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;
    @Autowired
    private CommentService service;

    @RequestMapping("/Board")
    public ModelAndView list(){
        List<BoardVO> BoardList = boardService.selectAllBoard();

        ModelAndView mav = new ModelAndView("Board/board");
        mav.addObject("BoardList", BoardList);

        return mav;
    }

    @RequestMapping(value = "/Board/write", method = RequestMethod.GET)
    public String WriteForm(){
        return "Board/write";
    }

    @RequestMapping(value = "/Board/write", method = RequestMethod.POST)
    public String Write(BoardVO boardVO , @RequestPart MultipartFile files) throws Exception{

        FileVO file = new FileVO();

        if(files.isEmpty()) {
            boardService.insertBoard(boardVO);
        } else {
            boardService.insertBoard(boardVO);
            int maxId = boardService.getMaxBoardId();

            file.setBno(maxId);

            String sourceFileName = files.getOriginalFilename();
            File destinationFile;

            String fileUrl = "C:\\Users\\jikon\\Documents\\BeginVegan\\BeginVegan\\src\\main\\webapp\\resources\\img";


            destinationFile = new File(fileUrl, sourceFileName);
            destinationFile.getParentFile().mkdirs();
            files.transferTo(destinationFile);

            file.setFileName(sourceFileName);
            file.setFileOriName(sourceFileName);
            file.setFileUrl(fileUrl);

            boardService.fileInsertService(file); // 파일 insert
        }


        return "redirect:/Board";
    }

    @RequestMapping(value = "/Board/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable ("id")int id) throws Exception{
        BoardVO boardId = boardService.selectByIdBoard(id);

        ModelAndView mav = new ModelAndView("Board/detail");

        mav.addObject("board", boardId);
        mav.addObject("files",boardService.fileDetailService(id));

        return mav;
    }

    @RequestMapping(value = "/Board/delete/{id}")
    public String deleteBoard(@PathVariable("id") int id) {

        boardService.deleteByIdBoard(id);

        return "redirect:/Board";
    }


    /* 수정 글쓰기 폼으로 넘겨줌*/
    @RequestMapping(value = "/Board/update/{id}", method ={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView updateForm(@PathVariable("id") int id) {

        BoardVO boardId = boardService.selectByIdBoard(id);
        ModelAndView mav = new ModelAndView("Board/update");
        mav.addObject("boardVO", boardId);

        return mav;
    }

    /*수정된 데이터들을 저장하고 목록으로 돌아감*/
    @RequestMapping(value = "/Board/update", method = RequestMethod.POST)
    public String update(BoardVO boardVO) {
        boardService.updateByIdBoard(boardVO);

        return "redirect:/Board";
    }

    @RequestMapping("/fileDown/{bno}")
    private void fileDown(@PathVariable int bno, HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("UTF-8");
        FileVO fileVO = boardService.fileDetailService(bno);

        try{
            String fileUrl = fileVO.getFileUrl();
            fileUrl += "/";
            String savePath = fileUrl;
            String fileName = fileVO.getFileName();

            String oriFileName = fileVO.getFileOriName();
            InputStream in = null;
            OutputStream os = null;
            File file = null;
            boolean skip = false;
            String client = "";

            try{
                file = new File(savePath, fileName);
                in = new FileInputStream(file);
            }catch (FileNotFoundException fe){
                skip = true;
            }

            client = request.getHeader("User-Agent");

            response.reset();
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Description", "JSP Generated Data");

            if (!skip) {
                // IE
                if (client.indexOf("MSIE") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                    // IE 11 이상.
                } else if (client.indexOf("Trident") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                } else {
                    // 한글 파일명 처리
                    response.setHeader("Content-Disposition",
                            "attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
                    response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
                }
                response.setHeader("Content-Length", "" + file.length());
                os = response.getOutputStream();
                byte b[] = new byte[(int) file.length()];
                int leng = 0;
                while ((leng = in.read(b)) > 0) {
                    os.write(b, 0, leng);
                }
            } else {
                response.setContentType("text/html;charset=UTF-8");
                System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
            }
            in.close();
            os.close();
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }

    }


}


