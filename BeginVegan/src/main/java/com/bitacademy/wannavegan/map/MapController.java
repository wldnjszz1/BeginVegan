package com.bitacademy.wannavegan.map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {
    @GetMapping({"/map"})
    public String home() {
        return "naverMap/map";
    }
}
