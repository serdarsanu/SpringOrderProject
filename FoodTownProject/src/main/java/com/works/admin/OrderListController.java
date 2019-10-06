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
public class OrderListController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderlist(HttpServletRequest req, Model model) {

		Session sesi = sf.openSession();

		List<Product> productcount = sesi.createQuery("from Product").list();
		List<User> usercount = sesi.createQuery("from User").list();
		List<Neworder> ordercount = sesi.createQuery("from Neworder").list();
		List<Contact> contactcount = sesi.createQuery("from Contact").list();

		model.addAttribute("productcount", productcount.size());
		model.addAttribute("usercount", usercount.size());
		model.addAttribute("ordercount", ordercount.size());
		model.addAttribute("contactcount", contactcount.size());

		List<Neworder> orderlist = sesi.createQuery("from Neworder").list();
		model.addAttribute("orderlist", orderlist);

		return Util.control(req, "orderlist");
	}

	@RequestMapping(value = "/orderdelivered/{orderid}")
	public String orderDelivered(@PathVariable int orderid, HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Neworder ord = sesi.load(Neworder.class, orderid);
		ord.setOrderstatus("Delivered");
		sesi.update(ord);

		tr.commit();
		return Util.control(req, "redirect:/admin/orderlist");
	}

	@RequestMapping(value = "/orderready/{orderid}")
	public String orderReady(@PathVariable int orderid, HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Neworder ord = sesi.load(Neworder.class, orderid);
		ord.setOrderstatus("Ready to Deliver");
		sesi.update(ord);
		tr.commit();
		return Util.control(req, "redirect:/admin/orderlist");
	}
}
