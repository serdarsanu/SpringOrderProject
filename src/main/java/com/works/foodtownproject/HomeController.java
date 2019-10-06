package com.works.foodtownproject;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Blog;
import model.Product;
import util.HibernateUtil;

@Controller
public class HomeController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		IncludeController.page = "/";
		Session sesi = sf.openSession();
		List<Blog> blogdata = sesi.createQuery("from Blog").list();
		List<Product> productdata = sesi.createQuery("from Product").list();
		model.addAttribute("productdata", productdata);
		model.addAttribute("blogdata", blogdata);

		return "site/home";
	}

}
