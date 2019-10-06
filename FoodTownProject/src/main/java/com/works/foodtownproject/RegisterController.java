package com.works.foodtownproject;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.User;
import util.HibernateUtil;
import util.Password;

@Controller
public class RegisterController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(HttpServletRequest req, User us) {
		IncludeController.page = "/register";
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
		return "site/register";
	}

	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(User us, HttpServletResponse res) {
		IncludeController.page = "/register";
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			tr.commit();
			Cookie cookie = new Cookie("user_remember", Password.encryption("" + us.getUserid(), 4));
			cookie.setMaxAge(60 * 60 * 24);
			res.addCookie(cookie);
			return "redirect:/";
		}

		else
			return "redirect:/register";
	}
}
