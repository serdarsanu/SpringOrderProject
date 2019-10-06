package com.works.foodtownproject;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Blog;
import util.HibernateUtil;

@Controller
public class BlogController {
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(Model model) {
		IncludeController.page = "/";
		Session sesi = sf.openSession();
		List<Blog> blogdata = sesi.createQuery("from Blog").list();
		model.addAttribute("blogdata", blogdata);
		return "site/blog";
	}

}