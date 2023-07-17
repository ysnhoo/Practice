package com.itwillbs.test1;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class CarItemController {
	@GetMapping("carResInfo")
	public String carInfo(Model model) {
	    return "car_res_info";
	}
	
}
