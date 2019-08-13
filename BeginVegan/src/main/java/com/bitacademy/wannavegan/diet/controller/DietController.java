package com.bitacademy.wannavegan.diet.controller;
import com.bitacademy.wannavegan.diet.service.DietService;
import com.bitacademy.wannavegan.diet.vo.DietVO;
import com.bitacademy.wannavegan.diet.vo.FileVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
@SessionAttributes({"loginVO"})
public class DietController {
    @Autowired
    private DietService service;

    @RequestMapping("/diet")
    public ModelAndView list() {
        List<DietVO> dietList = service.selectAllDiet();
        ModelAndView mav = new ModelAndView("diet/list");
        mav.addObject("dietList", dietList);
        System.out.println("ddd");
        return mav;
    }

    @GetMapping("/diet/write")
    public String writeForm() {
        return "diet/write";
    }

    @RequestMapping(value = "/diet/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable("id") int id){
        System.out.println("hihihi");
        DietVO diet = service.detailDietByID(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("diet/detail");
        mav.addObject("diet",diet);
        return mav;
    }

    @RequestMapping(value = "/diet/update", method=RequestMethod.POST)
    public String updateDiet(DietVO diet) {
        System.out.println(diet);
        service.updateDietByID(diet);
        return "redirect:/diet";
    }

    @RequestMapping("/diet/remove/{id}")
    public String removeBoard(@PathVariable("id") int id) {
        System.out.println(id);
        service.deleteDietByID(id);
        return "redirect:/diet";
    }

    @PostMapping("/diet/write")
    public String write(DietVO diet, @RequestPart MultipartFile files) throws Exception {

        FileVO file = new FileVO();

        if(files.isEmpty()) { // 업로드 할 파일이 X
            System.out.println("파일 업로드 하지 않음 오류뜨게 해야함");
        } else {
            String sourceFileName = files.getOriginalFilename();
            File destinationFile;
//            String fileUrl = "C:\\upload"; 나중에 서버파면 그떄 지정하기 지금은 밑에껄로 임시로

            String fileUrl = "/Users/jiwonkim/IdeaProjects/BeginVegan/src/main/webapp/resources/img";

            destinationFile = new File(fileUrl, sourceFileName);
            destinationFile.getParentFile().mkdirs();
            files.transferTo(destinationFile);
 //           diet.setImage((String)fileUrl + "\\" + (String)sourceFileName); 나중에 할거
            diet.setImage("resources/img/" + (String)sourceFileName);
            System.out.println(diet.getImage());
            service.insertDiet(diet); // 게시글 insert

            System.out.println(diet.getId());
            System.out.println(diet.getContent());


            //file.setBno(diet.getId());
            file.setFileName(sourceFileName);
            file.setFileOriName(sourceFileName);
            file.setFileUrl(fileUrl);
            System.out.println(file);
            service.fileInsertService(file); // 파일 insert
            }

        return "redirect:/diet";
    }

    @GetMapping("diet/boot")
    public String bootTest(){
        System.out.println("diet/boot test");
        return "diet/boot";
    }
}



    /*
    @GetMapping("/diet/uploadAjax")
    public void uploadAjax(){
        System.out.println("upload ajax");

    }

    @PostMapping(value="/diet/uploadAjaxAction", produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public ResponseEntity<List<AttachFileVO>> uploadAjaxPost(MultipartFile[] uploadFile){
        List<AttachFileVO> list = new ArrayList<>();
        String uploadFolder = "C:\\upload";

        String uploadFolderPath = getFolder();
        // 폴더 만들기
        File uploadPath = new File(uploadFolder, getFolder());

        if(uploadPath.exists() == false){
            uploadPath.mkdirs();
        }

        for(MultipartFile multipartFile : uploadFile){

            AttachFileVO attachVO = new AttachFileVO();
            String uploadFileName = multipartFile.getOriginalFilename();

            // IE has file path
            uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
            System.out.println("only file name: " + uploadFileName);
            attachVO.setFileName(uploadFileName);


            UUID uuid = UUID.randomUUID();
            uploadFileName = uuid.toString() + "_" + uploadFileName;

            try {
                File saveFile = new File(uploadPath, uploadFileName);
                multipartFile.transferTo(saveFile);

                attachVO.setUuid(uuid.toString());
                attachVO.setUploadPath(uploadFolderPath);

                if(checkImageType(saveFile)) {
                    attachVO.setImage(true);
                }
                list.add(attachVO);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    // 한 폴더에 사진이 너무많으면 관리가 힘들기 때문에
    // 날짜별로 폴더를 만든다.
    private String getFolder(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String str = sdf.format(date);
        return str.replace("-", File.separator);
    }

    // 이미지 파일인지 확인하는 거
    // 썸네일 안되서 안쓰는 중중
    private boolean checkImageType(File file){
        try {
            String contentType = Files.probeContentType(file.toPath());
            return contentType.startsWith("image");
        } catch (IOException e){
            e.printStackTrace();
        }
        return false;
    }
    */

