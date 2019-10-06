package com.works.foodtownproject;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.Product;
import util.HibernateUtil;
import util.Password;

@Controller
public class DetailController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "detail/{productid}", method = RequestMethod.GET)
	public String detail(@PathVariable int productid, Model model) {
		IncludeController.page = "/detail";
		Session sesi = sf.openSession();
		Product productdata = sesi.load(Product.class, productid);
		model.addAttribute("ShowProduct", ShowProduct(productid));

		return "site/detail";
	}

	@RequestMapping(value = "/addcart/{productid}", method = RequestMethod.POST)
	public String addCart(@PathVariable int productid, Cart us, HttpServletRequest req, Model model) {
		Session sesi = sf.openSession();
		model.addAttribute("ShowProduct", ShowProduct(productid));
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			System.out.println("addCart success");
		}
		tr.commit();
		if (req.getCookies() != null) {
			Cookie[] cookies = req.getCookies();
			for (Cookie item : cookies) {
				if (item.getName().equals("user_remember")) {
					String userid = Password.decrypt(item.getValue(), 4);
					System.out.println("Cookie userid : " + userid);
					req.getSession().setAttribute("user_id", userid);
					return "redirect:/order";
				}
			}
		}
		return "redirect:/login";
	}

	public Product ShowProduct(int productid) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Product productdata = sesi.load(Product.class, productid);
		return productdata;
	}
}