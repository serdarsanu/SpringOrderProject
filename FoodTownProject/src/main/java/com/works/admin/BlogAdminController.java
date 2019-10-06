package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Blog;
import model.Contact;
import model.Neworder;
import model.Product;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class BlogAdminController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/addblog", method = RequestMethod.GET)
	public String addblog(HttpServletRequest req, Model model) {

		Session sesi = sf.openSession();

		List<Product> productcount = sesi.createQuery("from Product").list();
		List<User> usercount = sesi.createQuery("from User").list();
		List<Neworder> ordercount = sesi.createQuery("from Neworder").list();
		List<Contact> contactcount = sesi.createQuery("from Contact").list();

		model.addAttribute("productcount", productcount.size());
		model.addAttribute("usercount", usercount.size());
		model.addAttribute("ordercount", ordercount.size());
		model.addAttribute("contactcount", contactcount.size());

		return Util.control(req, "addblog");
	}

	@RequestMapping(value = "/addblog", method = RequestMethod.POST)
	public String addBlog(HttpServletRequest req, Blog blg) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		sesi.save(blg);
		tr.commit();

		return Util.control(req, "redirect:/admin/bloglist");

	}

	@RequestMapping(value = "/deleteblog/{blogid}")
	public String deleteBlog(@PathVariable int blogid, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Blog us = sesi.load(Blog.class, blogid);
		sesi.delete(us);
		tr.commit();

		return Util.control(req, "redirect:/admin/bloglist");
	}
}
