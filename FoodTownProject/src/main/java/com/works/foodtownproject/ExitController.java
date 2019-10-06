package com.works.foodtownproject;

import java.sql.PreparedStatement;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.DB;

@Controller
public class ExitController {
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletResponse request) {
		DB db = new DB();

		IncludeController.page = "/exit";
		Cookie cookie = new Cookie("user_remember", "");
		cookie.setMaxAge(0);
		request.addCookie(cookie);

		try {
			String query = "TRUNCATE cart";
			PreparedStatement pre = db.connect(query);
			pre.executeUpdate();
			System.out.println("Deletion Successful");
		} catch (Exception e) {
			System.err.println("Deletion Error : " + e);
		}

		return "redirect:/";
	}
}
