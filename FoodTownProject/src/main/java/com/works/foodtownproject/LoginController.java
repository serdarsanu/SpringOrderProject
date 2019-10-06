package com.works.foodtownproject;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;
import util.HibernateUtil;
import util.Password;

@Controller
public class LoginController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest req, User us) {
		IncludeController.page = "/";
		if (req.getCookies() != null) {
			Cookie[] cookies = req.getCookies();
			for (Cookie item : cookies) {
				if (item.getName().equals("user_remember")) {
					String userid = Password.decrypt(item.getValue(), 4);
					System.out.println("Cookie userid : " + userid);
					req.getSession().setAttribute("user_id", userid);
					return "redirect:/";
				}
			}
		}
		return "site/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(User us, @RequestParam(defaultValue = "off") String remember_me, HttpServletResponse res) {

		System.out.println("remember_me : " + remember_me);

		Session sesi = sf.openSession();
		try {
			User lus = (User) sesi.createQuery("from User where usermail =? and userpassword =? ")
					.setParameter(0, us.getUsermail()).setParameter(1, us.getUserpassword()).list().get(0);

			if (remember_me.equals("on")) {
				Cookie cookie = new Cookie("user_remember", Password.encryption("" + lus.getUserid(), 4));
				cookie.setMaxAge(60 * 60 * 24);
				res.addCookie(cookie);

			}
			return "redirect:/";

		} catch (Exception e) {
			System.out.println("No Such User");
		}
		return "redirect:/login";
	}
}
