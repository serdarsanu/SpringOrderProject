package com.works.foodtownproject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Blog;
import util.HibernateUtil;

@Controller
public class PostController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String post(Model model) {
		IncludeController.page = "/post";
		return "site/post";
	}

	@RequestMapping(value = "post/{blogid}", method = RequestMethod.GET)
	public String showPost(@PathVariable int blogid, Model model) {
		Session sesi = sf.openSession();
		Blog post = sesi.load(Blog.class, blogid);
		model.addAttribute("ShowBlog", ShowBlog(blogid));
		return "site/post";
	}

	public Blog ShowBlog(int blogid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Blog post = sesi.load(Blog.class, blogid);
		return post;
	}
}
