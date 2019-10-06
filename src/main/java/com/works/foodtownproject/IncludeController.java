package com.works.foodtownproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IncludeController {

	public static String page = "/";

	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String css() {
		return "inc/css";
	}
	
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "inc/js";
	}

	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "inc/footer";
	}

	@RequestMapping(value = "/navbar", method = RequestMethod.GET)
	public String navbar(Model model) {
		model.addAttribute("page", IncludeController.page);
		return "inc/navbar";
	}

}
