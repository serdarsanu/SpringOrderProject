package com.works.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Admin;
import util.DB;
import util.Password;

@Controller
@RequestMapping("/admin")
public class LoginadminController {

	DB db = new DB();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginadmin(HttpServletRequest req) {
		if (req.getCookies() != null) {
			Cookie[] cookies = req.getCookies();
			for (Cookie item : cookies) {
				if (item.getName().equals("admin_cookie")) {
					String usid = Password.decrypt(item.getValue(), 4);
					System.out.println("Cookie Uid : " + usid);
					return "redirect:/admin/dashboard";
				}
			}
		}
		return "admin/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginadminPost(Admin adm, Model model, HttpServletRequest req,
			@RequestParam(defaultValue = "off") String remember, HttpServletResponse res) {
		try {
			String query = "select * from admin where adminmail = ? and adminpassword = ? ";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, adm.getAdminmail());
			pre.setString(2, adm.getAdminpassword());
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				adm.setAdminid(rs.getInt("adminid"));
				adm.setAdminname(rs.getString("adminname"));
				req.getSession().setAttribute("adminid", adm);

				if (remember.equals("on")) {
					Cookie cookie = new Cookie("admin_cookie", Password.encryption("" + adm.getAdminid(), 4));
					cookie.setMaxAge(60 * 60 * 24);
					res.addCookie(cookie);

				}
				return "redirect:/admin/dashboard";
			} else {
				model.addAttribute("error", "Wrong Username or Password");
			}
		} catch (Exception e) {
			System.err.println("login error : " + e);
			model.addAttribute("error", "Connection Error");
		}
		return "admin/login";
	}

	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req, HttpServletResponse res) {

		Cookie cookie = new Cookie("admin_cookie", "");
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		req.getSession().invalidate();

		return "redirect:/admin/";
	}

}
