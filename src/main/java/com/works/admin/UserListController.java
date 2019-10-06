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

import model.Contact;
import model.Neworder;
import model.Product;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UserListController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/userlist", method = RequestMethod.GET)
	public String userlist(HttpServletRequest req, Model model) {

		Session sesi = sf.openSession();

		List<Product> productcount = sesi.createQuery("from Product").list();
		List<User> usercount = sesi.createQuery("from User").list();
		List<Neworder> ordercount = sesi.createQuery("from Neworder").list();
		List<Contact> contactcount = sesi.createQuery("from Contact").list();

		model.addAttribute("productcount", productcount.size());
		model.addAttribute("usercount", usercount.size());
		model.addAttribute("ordercount", ordercount.size());
		model.addAttribute("contactcount", contactcount.size());

		List<User> userlist = sesi.createQuery("from User").list();
		model.addAttribute("userlist", userlist);

		return Util.control(req, "userlist");
	}

	@RequestMapping(value = "/deleteuser/{userid}")
	public String deleteUser(@PathVariable int userid, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		User us = sesi.load(User.class, userid);
		sesi.delete(us);
		tr.commit();

		return Util.control(req, "redirect:/admin/userlist");
	}
}
