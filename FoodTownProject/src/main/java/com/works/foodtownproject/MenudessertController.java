package com.works.foodtownproject;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import util.HibernateUtil;

@Controller
public class MenudessertController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/menudessert", method = RequestMethod.GET)
	public String menuDessert(Model model) {
		Session sesi = sf.openSession();
		List<Product> productdata = sesi.createQuery("from Product").list();
		model.addAttribute("productdata", productdata);
		return "site/menudessert";
	}
}
