package com.works.foodtownproject;

import java.sql.PreparedStatement;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.Neworder;
import util.DB;
import util.HibernateUtil;

@Controller
public class OrderController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	DB db = new DB();

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model) {
		IncludeController.page = "order";
		Session sesi = sf.openSession();
		List<Cart> carts = sesi.createQuery("from Cart").list();
		model.addAttribute("cartdata", carts);
		double total = 0;
		for (Cart item : carts) {
			total = total + item.getProductprice();
		}
		model.addAttribute("total", total);
		return "site/order";
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String neworder(Neworder us) {
		IncludeController.page = "/order";
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			System.out.println("neworder Success");
		}

		tr.commit();
		try {
			String query = "TRUNCATE cart";
			PreparedStatement pre = db.connect(query);
			pre.executeUpdate();
			System.out.println("Delete Success");
		} catch (Exception e) {
			System.err.println("Delete Error : " + e);
		}
		return "redirect:/order";
	}

	@RequestMapping(value = "/delete/{cartid}", method = RequestMethod.GET)
	public String orderDelete(@PathVariable int cartid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Cart cart = sesi.load(Cart.class, cartid);
		sesi.delete(cart);
		tr.commit();
		return "redirect:/order";
	}

}
